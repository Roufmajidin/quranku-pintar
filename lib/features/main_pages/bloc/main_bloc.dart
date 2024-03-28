import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
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
  }
  // functionality
  // check passed
  Future<void> _checkPassed(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

    String lastWords = (event as CheckPassed).ayat;
    // get userid
    // log('hallo  ${_lastWords}');
    QuranModels quranData = state.quranData;
    // print(quranData.runtimeType);

    if (state.quranData is QuranModels) {
      var hasilPencarian = quranData.data!.ayat.where((ayatItem) {
        String normalizedLatinText = removeDiacritics(ayatItem.teksArab);
        double similarity = lastWords.similarityTo(normalizedLatinText);

        return similarity > 0.8;
      }).toList();

      if (hasilPencarian.isNotEmpty) {
        if (lastWords == 'بسم الله الرحمن الرحيم') {
          log('Ayat: 1');
        } else {
          List<QuranAyat> mutableAyatList = List.from(quranData.data!.ayat);
        
        for (var ayatItem in hasilPencarian) {
          log('');
          log('Ayat: ${ayatItem.teksArab}, Nomor Ayat: ${ayatItem.nomorAyat} index : ');
          
          int index = mutableAyatList.indexOf(ayatItem);
          if (index != -1) {
            mutableAyatList[index] = mutableAyatList[index].copyWith(terbaca: true);
            log(' terbaca :${index.toString()}');
            emit(state.copyWith(index: index));
          }
        }

        quranData = quranData.copyWith(data: quranData.data!.copyWith(ayat: mutableAyatList));
        emit(state.copyWith(fetchDataProses: FetchStatus.success, quranData: quranData));

      }
      } else {
        log('Kata \"$lastWords\" tidak ditemukan dalam QuranData');
      }
    } else {
      log('Error: QuranData bukan merupakan instance dari QuranModels');
    }
    for (var element in quranData.data!.ayat) {
      log('ayat : ${element.nomorAyat} ${element.terbaca}');
      
    }
  }

  Future<void> _getDetailSurat(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('fetch Surat');
    int surat = (event as GetDetailSurat).surat;
    // get userid
    log('surat nomor : $surat');

    final getDetail = await quranUsecase.getDetailSurat(surat: surat);
    getDetail.fold(
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)), (r) {
      var quranData = r;
      emit(state.copyWith(fetchDataProses: FetchStatus.success, quranData: r));
      // log('hallo  ${r}');
    });
  }

  // remove string helper
  String removeDiacritics(String text) {
    return text.replaceAll(
        RegExp(
            r'[\u0610-\u061A\u064B-\u065F\u0670\u06D6-\u06ED\u08D3-\u08E1\u08E3-\u08FF\uFB50-\uFDCF\uFDF0-\uFDFF\uFE70-\uFEFC]'),
        '');
  }
}
