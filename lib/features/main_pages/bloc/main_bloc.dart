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

  MainBloc({required this.quranUsecase}) : super(const _Initial()) {
    on<GetDetailSurat>(_getDetailSurat);
    on<GetAllSurah>(_getAllSurat);
    on<CheckPassed>(_checkPassed);
    on<LoadingActive>(_loader);
    on<GetMateri>(_getMateri);
    on<PostDevice>(_postDevice);
    on<GetMateriPengguna>(_getMateriPengguna);
    on<PostLearn>(_postLearn);
    on<CheckPassMateri>(_checkPassedMateri);
    on<CariSurat>(_cariSurat);
    on<UpdateIndex>(_updateIndex);
    on<HapusSemuaVariabel>(_hapusSemuaVariabel);
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
 Future<void> _hapusSemuaVariabel(MainEvent event, Emitter<MainState> emit) async {
    log('Rebase data variabel');
   
    emit(state.copyWith(ayatIndex: 0, persentase: 0, index: 0, koreksian: [],isLoading: ''));
  }

  Future<void> _updateIndex(MainEvent event, Emitter<MainState> emit) async {
    log('update index');
    String ayatAcuan = (event as UpdateIndex).acuan;
    int index = (event).index;
    emit(state.copyWith(ayatAcuan: ayatAcuan, ayatIndex: index, isLoading: 'memulai ulang'));
    log('terupdate ${state.ayatAcuan} index: ${state.index}', );
  }

  Future<void> _cariSurat(MainEvent event, Emitter<MainState> emit) async {
    String query = (event as CariSurat).query;
    List<Surat> allSurat = state.surat;
    log('Searching for: ${allSurat.length}');

    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

    List<Surat> filteredSurat = allSurat.where((surat) {
      String suratName = removetandabaca(surat.namaLatin ?? '');
      String queryNormalized = removetandabaca(query);

      // Create a regex that allows for extra characters
      String regexPattern =
          queryNormalized.split('').map((char) => '$char.*?').join('');

      return RegExp(regexPattern, caseSensitive: false).hasMatch(suratName);
    }).toList();

    log('Filtered surat count: ${filteredSurat.length}');

    if (filteredSurat.isEmpty) {
      log('No matching surat found for query: $query');
      emit(state.copyWith(
        fetchDataProses: FetchStatus.failure, // Change to noResults for clarity
        pencarian: [],
        queryPencarian: query, // Keep the query for display purposes
      ));
    } else {
      emit(state.copyWith(
        fetchDataProses: FetchStatus.success,
        pencarian: filteredSurat,
        queryPencarian: query,
      ));
    }
  }

  // check passed
  Future<void> _checkPassed(MainEvent event, Emitter<MainState> emit) async {
    String lastWords = removeDiacritics((event as CheckPassed).ayat);
    emit(state.copyWith(isLoading: lastWords));
    String ayatAcuan = removeDiacritics(state.ayatAcuan);
    int indexAyat = state.index;

    QuranModels quranData = state.quranData;
    if (indexAyat >= 0 && indexAyat < quranData.data!.ayat.length) {
      QuranAyat ayatItem = quranData.data!.ayat[indexAyat];

      String normalizedLatinText = removeDiacritics(ayatItem.teksArab);
      double similarity = lastWords.similarityTo(normalizedLatinText);

      // if (similarity > 0.6) {
      List<Diff> differences = computeDiffAyatAcuanRekaman(
        removeDiacritics(ayatItem.teksArab),
        lastWords,
      );
      int persentase =
          (similarity * 100).toInt(); // Mengonversi similarity ke persentase
      log('Similarity: $similarity');
      log('Persentase: $persentase%');

      StringBuffer koreksi = StringBuffer();
      for (var diff in differences) {
        if (diff.operation == DIFF_INSERT) {
          koreksi.writeln('Tambahan yang tidak ada pada ayat: ${diff.text}');
        } else if (diff.operation == DIFF_DELETE) {
          koreksi.writeln('Bagian yang hilang dari bacaan: ${diff.text}');
        }
      }
      List<QuranAyat> mutableAyatList = List.from(quranData.data!.ayat);
      // mutableAyatList[indexAyat] = mutableAyatList[indexAyat].copyWith(terbaca: true); --bener
      mutableAyatList[indexAyat] = mutableAyatList[indexAyat];

      quranData = quranData.copyWith(
        data: quranData.data!.copyWith(ayat: mutableAyatList),
      );

      emit(state.copyWith(
          ayatIndex: indexAyat,
          ayatAcuan: ayatItem.teksArab,
          koreksian: koreksi.toString().split('\n'),
          index: indexAyat,
          isPassed: true,
          fetchDataProses: FetchStatus.success,
          quranData: quranData,
          isLoading: 'memulai ulang',
          persentase: persentase));

      log('Differences: $differences');
      log(koreksi.toString());
      log('Kata yang dicari: $lastWords, Ayat yang sesuai: ${ayatItem.teksArab}, Nomor Ayat: ${ayatItem.nomorAyat} simmi : $similarity');
      log('Status: ${state.isPassed}');
    } else {
      emit(state.copyWith(isPassed: false));
      log('Tidak ditemukan ayat yang mirip dengan cukup.');
    }
  }

  // TODO cekpass materi
  // check passed
  Future<void> _checkPassedMateri(
      MainEvent event, Emitter<MainState> emit) async {
    String lastWords = ((event as CheckPassMateri).ayat);
    String acuan = removeDiacritics((event).acuan);
    int id = ((event).id);
    log('ini ${lastWords}');

    acuan = acuan.replaceAll('[', '').replaceAll(']', '').replaceAll(' ', '');
    List<String> huruf = acuan.split(',');

    double highestSimilarity = 0.0;
    int bestMatchIndex = -1;

    for (int i = 0; i < huruf.length; i++) {
      double similarity =
          StringSimilarity.compareTwoStrings(lastWords, huruf[i]);
      if (similarity > highestSimilarity) {
        highestSimilarity = similarity;
        bestMatchIndex = i;
       
      }
    }
    print('Indeks dari elemen yang paling mirip dengan $lastWords adalah $bestMatchIndex');
    print('Nilai similarity: $highestSimilarity');
     if (bestMatchIndex != -1) {

    // Compute differences using DiffMatchPatch
    List<Diff> differences = computeDiffAyatAcuanRekaman(
      removeDiacritics(huruf[bestMatchIndex]),
      lastWords,
    );

    StringBuffer koreksi = StringBuffer();
    for (var diff in differences) {
      if (diff.operation == DIFF_INSERT) {
        koreksi.writeln('Tambahan yang tidak ada: ${diff.text}');
      } else if (diff.operation == DIFF_DELETE) {
        koreksi.writeln('Bagian yang hilang: ${diff.text}');
      }
    }

    print('Differences: $differences');
    print('Koreksi: ${koreksi.toString()}');

    final a = await quranUsecase.postLearn(id, highestSimilarity.toInt());
    a.fold(
      (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)),
      (r) {
        groupByJenisKuis(state.materi);
        emit(state.copyWith(
          fetchDataProses: FetchStatus.success,
          koreksian: koreksi.toString().split('\n'), // Store corrections in state
        ));
      },
    );
  } 

    else {
      print('$lastWords tidak ditemukan dalam daftar');
    }
  }

  Future<void> _getDetailSurat(MainEvent event, Emitter<MainState> emit) async {
    log('fetch Surat');
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

    int surat = (event as GetDetailSurat).surat;
    // get userid
    // log('surat nomor : $surat');

    final getDetail = await quranUsecase.getDetailSurat(surat: surat);

    getDetail.fold(
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)), (r) {
      var quranData = r;
      log('quranData ${quranData.toJson()}');

      emit(state.copyWith(quranData: r));

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
          emit(state.copyWith(fetchDataProses: FetchStatus.success));
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
    // emit(state.copyWith(fetchDataProses: FetchStatus.loading));

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
    a.fold((l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)),
        (r) {
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

  //ganti kesini
  Future<void> _getMateriPengguna(
      MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    String d = (event as GetMateriPengguna).device;

    final a = await quranUsecase.getMateriPengguna(d);
    a.fold(
        // ignore: void_checks
        (l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)), (r) {
      List<Materi> materiList = [];

      for (var pengguna in r) {
        if (pengguna.materi_detail != null) {
          materiList.add(pengguna.materi_detail!);
        }
        emit(state.copyWith(materi: materiList));
      }

      emit(state.copyWith(
        fetchDataProses: FetchStatus.success,
        materi: materiList,
        pengguna: r,
        deviceInfo: d,
      ));
      log('pengguna adalah ${state.pengguna.length}');
      groupByJenisKuis(state.materi);
    });
  }

  Future<void> groupByJenisKuis(List<Materi> materiList) async {
    Map<String, Map<String, List<Materi>>> groupedByJenisKuisAndKategori = {};

    // Proses pengelompokan data
    for (var materi in materiList) {
      String? jenisKuis = materi.jenis_kuis;
      String? kategori = materi.kategori;

      if (!groupedByJenisKuisAndKategori.containsKey(jenisKuis)) {
        groupedByJenisKuisAndKategori[jenisKuis.toString()] = {};
      }
      if (!groupedByJenisKuisAndKategori[jenisKuis]!.containsKey(kategori)) {
        groupedByJenisKuisAndKategori[jenisKuis.toString()]![
            kategori.toString()] = [];
      }
      groupedByJenisKuisAndKategori[jenisKuis]![kategori]!.add(materi);
      emit(state.copyWith(
        fetchDataProses: FetchStatus.success,
        groupedMateri: groupedByJenisKuisAndKategori,
      ));
    }

    // Simpan ke SharedPreferences setelah proses selesai
  }

  Future<void> _postDevice(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('post Device ');
    String deviceName = ((event as PostDevice).deviceInfo);
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('deviice $deviceName');

    final a = await quranUsecase.postDevice(deviceName);
    a.fold((l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)),
        (r) {
      emit(state.copyWith(
        fetchDataProses: FetchStatus.success,
        deviceInfo: deviceName,
      ));
    });
  }

  Future<void> _postLearn(MainEvent event, Emitter<MainState> emit) async {
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));
    log('post Learn ');
    int id = (event as PostLearn).id;
    int nilai = (event).nilai;
    print('$nilai, $id');
    emit(state.copyWith(fetchDataProses: FetchStatus.loading));

    final a = await quranUsecase.postLearn(id, nilai);
    a.fold((l) => emit(state.copyWith(fetchDataProses: FetchStatus.failure)),
        (r) {
      groupByJenisKuis(state.materi);
      emit(state.copyWith(
        fetchDataProses: FetchStatus.success,
      ));
    });
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

String removetandabaca(String input) {
  return input.replaceAll(RegExp(r'[^\w\s]'), '').toLowerCase();
}
// sementara

// class TokenizedAya {
//   List<TajweedToken> tokens = [];

//   TokenizedAya(this.tokens);
// }
