import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/tajwid_helper/tajweed.dart';
import 'package:quranku_pintar/features/main_pages/data/usecases/quran_usecase.dart';
import 'package:string_similarity/string_similarity.dart';
part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final QuranUsecase quranUsecase;

  MainBloc({required this.quranUsecase}) : super(_Initial()) {
    on<GetDetailSurat>(_getDetailSurat);
    on<CheckPassed>(_checkPassed);
    on<LoadingActive>(_loader);
  }
  // functionality
  Future<void> _loader(MainEvent event, Emitter<MainState> emit) async {
    bool selesai = false;
    String lastWords = removeDiacritics((event as LoadingActive).loading);
    log(lastWords);
    if (selesai == false) {
      emit(state.copyWith(isLoading: lastWords));
      log('state ${state.isLoading}');
    }
  }
  // check passed

  Future<void> _checkPassed(MainEvent event, Emitter<MainState> emit) async {
    String lastWords = removeDiacritics((event as CheckPassed).ayat);
    emit(state.copyWith(isLoading: lastWords));

    QuranModels quranData = state.quranData;

    if (state.quranData is QuranModels) {
      var hasilPencarian = quranData.data!.ayat.where((ayatItem) {
        String normalizedLatinText = removeDiacritics(ayatItem.teksArab);
        double similarity = lastWords.similarityTo(normalizedLatinText);

        return similarity > 0.6;
      }).toList();

      if (hasilPencarian.isNotEmpty) {
        if (lastWords == 'بسم الله الرحمن الرحيم') {
          log('Ayat: 1');
        } else {
          List<QuranAyat> mutableAyatList = List.from(quranData.data!.ayat);

          for (var ayatItem in hasilPencarian) {
            var a = StringSimilarity.compareTwoStrings(
                removeDiacritics(ayatItem.teksArab), lastWords); // → 0.8
            if (a >= 0.80 || a  >= 0.9) {
              log(' oke similarity : $a');
            } else {
              log('is: $lastWords, Ayat yang sesuai: ${ayatItem.teksArab},\n Nomor Ayat: ${ayatItem.nomorAyat} \n simm : $a');
            }
            log('');
            log('Kata yang dicari: $lastWords, Ayat yang sesuai: ${ayatItem.teksArab}, Nomor Ayat: ${ayatItem.nomorAyat}');

            int index = mutableAyatList.indexOf(ayatItem);
            if (index != -1) {
              mutableAyatList[index] =
                  mutableAyatList[index].copyWith(terbaca: true);
              log('Terbaca: ${index.toString()}');
              emit(state.copyWith(index: index));
              emit(state.copyWith(isPassed: true));
            } else {
              emit(state.copyWith(isPassed: false));
            }
            log('Status: ${state.isPassed}');
          }

          quranData = quranData.copyWith(
              data: quranData.data!.copyWith(ayat: mutableAyatList));
          emit(state.copyWith(
              fetchDataProses: FetchStatus.success, quranData: quranData));
        }
      } else {
        log('Kata \"$lastWords\" tidak ditemukan dalam QuranData');
      }
    } else {
      log('Error: QuranData bukan merupakan instance dari QuranModels');
    }
  }

  Future<void> _getDetailSurat(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('fetch Surat');
    int surat = (event as GetDetailSurat).surat;
    // get userid
    // log('surat nomor : $surat');

    final getDetail = await quranUsecase.getDetailSurat(surat: surat);
    getDetail.fold(
        // ignore: void_checks
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)), (r) {
      var quranData = r;
      log('quranData ${quranData.toJson()}');
      // log('===');

      emit(state.copyWith(fetchDataProses: FetchStatus.success, quranData: r));
      // log('hallo  ${r}');
      //  hah

      final ayatList = state.quranData;
      final result = <QuranAyat>[];
      int loaded = 0;
      final ayas = r.data?.ayat.length;
      final loadOnly = ayas;
      if (ayatList != null) {
        for (final ayatItem in r.data!.ayat) {
          final tokens = Tajweed.tokenize(ayatItem.teksArab, 2, loaded + 1);
          result.add(QuranAyat(
            nomorAyat: ayatItem.nomorAyat,
            teksArab: ayatItem.teksArab,
            teksLatin: ayatItem.teksLatin,
            teksIndonesia: ayatItem.teksIndonesia,
            terbaca: ayatItem.terbaca,
            audio: ayatItem.audio,
            toke: tokens,
          ));
          if (++loaded >= loadOnly!) {
            break;
          }
        }
      }

      final updatedQuranData = r.copyWith(
        data: r.data?.copyWith(ayat: result),
      );

      emit(state.copyWith(quranData: updatedQuranData));
      log(ayas.toString());
    });
  }

  String removeDiacritics(String text) {
    return text.replaceAll(
        RegExp(
            r'[\u0610-\u061A\u064B-\u065F\u0670\u06D6-\u06ED\u08D3-\u08E1\u08E3-\u08FF\uFB50-\uFDCF\uFDF0-\uFDFF\uFE70-\uFEFC]'),
        '');
  }
}

// sementara

// class TokenizedAya {
//   List<TajweedToken> tokens = [];

//   TokenizedAya(this.tokens);
// }
