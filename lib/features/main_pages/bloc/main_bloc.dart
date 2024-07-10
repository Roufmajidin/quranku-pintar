import 'dart:convert';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:diff_match_patch/diff_match_patch.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quranku_pintar/core/error/utils/status.dart';
import 'package:quranku_pintar/features/main_pages/data/models/materi.dart';
import 'package:quranku_pintar/features/main_pages/data/models/quran.dart';
import 'package:quranku_pintar/features/main_pages/data/models/surah.dart';
import 'package:quranku_pintar/features/main_pages/data/tajwid/tajwid_helper/tajweed.dart';
import 'package:quranku_pintar/features/main_pages/data/usecases/quran_usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:string_similarity/string_similarity.dart';
part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final QuranUsecase quranUsecase;

  MainBloc({required this.quranUsecase}) : super(_Initial()) {
    on<GetDetailSurat>(_getDetailSurat);
    on<GetAllSurah>(_getAllSurat);
    on<CheckPassed>(_checkPassed);
    on<LoadingActive>(_loader);
    on<GetMateri>(_getMateri);
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
        // cekcoba
        List<String> hurufArab = separateArabicLetters(
            removeDiacritics('بِسْمِ اللَّهِ الرَّحْمَنِ'));
        log(hurufArab.toString());

//         String hurufLengkap =removeDiacritics('بِسْمِ اللَّهِ الرَّحْنِ');
//         List<String> hurufKurang = hurufLengkap.split('');
//         log(hurufKurang.toString());
//       hurufKurang.forEach((huruf) {
//         if (!hurufArab.contains(huruf.runes.map((rune) => String.fromCharCode(rune)).join(''))) {
//           print('Huruf yang kurang: $huruf');
//         }
// }
// );
        // hurufArab.forEach((huruf) {
        //   if (!hurufLengkap.contains(huruf)) {
        //     print('Huruf yang tidak ada dalam kalimat: $huruf');
        //   }
        // });
        //

        int aa = 0;

        List<QuranAyat> mutabablelis = List.from(quranData.data!.ayat);

        for (var ayatItem in hasilPencarian) {
          var a = StringSimilarity.compareTwoStrings(
              removeDiacritics(ayatItem.teksArab), lastWords); // → 0.8
          List<Diff> differences = computeDiffAyatAcuanRekaman(
            removeDiacritics(ayatItem.teksArab),
            lastWords,
          );
          log('================================================================');
          //message
          StringBuffer koreksi = StringBuffer();
          // koreksi.writeln('Pada ayat terkait yaitu:');
          // koreksi.writeln('Ayat yang sesuai: ${ayatItem.teksArab},');
          // koreksi.writeln('Bacaanmu adalah: $lastWords.');

          for (var diff in differences) {
            if (diff.operation == DIFF_INSERT) {
              koreksi
                  .writeln('Tambahan yang tidak ada pada ayat: ${diff.text}');
            } else if (diff.operation == DIFF_DELETE) {
              koreksi.writeln('Bagian yang hilang dari bacaan: ${diff.text}');
            }
          }

          log('Differences: $differences');
          log(koreksi.toString());
          log('Kata yang dicari: $lastWords, Ayat yang sesuai: ${ayatItem.teksArab}, Nomor Ayat: ${ayatItem.nomorAyat}');
          emit(state.copyWith(
              ayatIndex: aa += 1,
              ayatAcuan: ayatItem.teksArab,
              koreksian: koreksi.toString().split('\n')));
          print(
              'ayat terkait : ${ayatItem.teksArab}\n ayat dilafalkan ${lastWords}');
          int index = mutabablelis.indexOf(ayatItem);
          if (index != -1) {
            mutabablelis[index] = mutabablelis[index].copyWith(terbaca: true);
            log('Terbaca: ${index.toString()}');
            emit(state.copyWith(index: index, isPassed: true));
          } else {
            emit(state.copyWith(isPassed: false));
          }
          log('Status: ${state.isPassed}');
        }

        quranData = quranData.copyWith(
            data: quranData.data!.copyWith(ayat: mutabablelis));
        emit(state.copyWith(
          fetchDataProses: FetchStatus.success,
          quranData: quranData,
        ));
      }
    } else {
      log('Error: QuranData bukan merupakan instance dari QuranModels');
    }
  }

  Future<void> _getDetailSurat(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('fetch Surat');
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

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

  // get surah
  Future<void> _getAllSurat(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('fetch Surat');
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

    // get userid
    // log('surat nomor : $surat');

    final a = await quranUsecase.getAllSurah();
    a.fold(
        // ignore: void_checks
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)), (r) {
      List<Surat> allsurat = r;

      emit(state.copyWith(
          fetchDataProses: FetchStatus.success, surat: allsurat));
      log(state.surat.length.toString());

      // log(ayas.toString());
    });
  }

  // get materi
  Future<void> _getMateri(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('fetch Surat');
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

    // get userid
    // log('surat nomor : $surat');

    final a = await quranUsecase.getMateri();
    a.fold(
        // ignore: void_checks
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)), (r) {
      List<Materi> materi = r;
      groupByJenisKuis(materi);

      emit(state.copyWith(
        fetchDataProses: FetchStatus.success,
        materi: materi,
      ));
      log(state.surat.length.toString());

      // log(ayas.toString());
    });
  }

  Future<void> groupByJenisKuis(List<Materi> materiList) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Map<String, Map<String, List<Materi>>> groupedByJenisKuisAndKategori = {};

    for (var materi in materiList) {
      String? jenisKuis = materi.jenis_kuis;
      String? kategori = materi.kategori;

      if (jenisKuis != null && kategori != null) {
        if (!groupedByJenisKuisAndKategori.containsKey(jenisKuis)) {
          groupedByJenisKuisAndKategori[jenisKuis] = {};
        }
        if (!groupedByJenisKuisAndKategori[jenisKuis]!.containsKey(kategori)) {
          groupedByJenisKuisAndKategori[jenisKuis]![kategori] = [];
        }
        groupedByJenisKuisAndKategori[jenisKuis]![kategori]!.add(materi);
      }
      log('kategori kuis : ${groupedByJenisKuisAndKategori.length}');
      emit(state.copyWith(
        fetchDataProses: FetchStatus.success,
        groupedMateri: groupedByJenisKuisAndKategori,
      ));
    }
    // Set preferences based on the length of groupedByJenisKuisAndKategori
    List<int> preferenceList =
        List.generate(groupedByJenisKuisAndKategori.length, (index) => 0);
    await prefs.setStringList(
        'groupPreferences', preferenceList.map((e) => e.toString()).toList());

    // print(groupedByJenisKuisAndKategori);
    // Check preferences and lock groups with value 0
    List<String>? storedPreferences = prefs.getStringList('groupPreferences');
    if (storedPreferences != null) {
      List<int> storedPrefList =
          storedPreferences.map((e) => int.parse(e)).toList();
      int index = 0;
      for (var entry in groupedByJenisKuisAndKategori.entries) {
        if (storedPrefList[index] == 0) {
          entry.value.clear(); // Lock the group by clearing its value
        }
        index++;
      }
    }
  }

  String removeDiacritics(String text) {
    var diacritics = RegExp(
        r'[\u064B\u064C\u064D\u064E\u064F\u0650\u0651\u0652\u0653\u0654\u0655\u0656\u0657\u0658\u0659\u065A\u065B\u065C\u065D\u065E\u065F\u0670]');
    return text.replaceAll(diacritics, '');
  }
}

List<String> separateArabicLetters(String sentence) {
  return sentence.split('');
}

void compareTexts(String text1, String text2) {
  List<String> differences = [];

  int maxLength = text1.length > text2.length ? text1.length : text2.length;
  for (int i = 0; i < maxLength; i++) {
    String char1 = i < text1.length ? text1[i] : '';
    String char2 = i < text2.length ? text2[i] : '';

    if (char1 != char2) {
      differences.add('Posisi $i: "$char1" vs "$char2"');
    }
  }

  if (differences.isEmpty) {
    print("Kalimat sama");
  } else {
    print("Kalimat berbeda pada posisi: ");
    differences.forEach((diff) => print(diff));
  }
}

List<Diff> computeDiffAyatAcuanRekaman(String ayatAcuan, String teksRekognisi) {
  DiffMatchPatch dmp = DiffMatchPatch();
  List<Diff> diffs = dmp.diff(ayatAcuan, teksRekognisi);
  dmp.diffCleanupSemantic(diffs);
  return diffs;
}
// sementara

// class TokenizedAya {
//   List<TajweedToken> tokens = [];

//   TokenizedAya(this.tokens);
// }
