import 'package:freezed_annotation/freezed_annotation.dart';


part 'quran.freezed.dart';
part 'quran.g.dart';
@immutable

@freezed
abstract class QuranModels with _$QuranModels {
   factory QuranModels({
     int? code,
     String? message,
     QuranData? data,
   }) = _QuranModels; 
    factory QuranModels.fromJson(Map<String, dynamic> json) =>
      _$QuranModelsFromJson(json);
}
@freezed
class QuranData with _$QuranData {
  const factory QuranData({
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
    required String tempatTurun,
    required String arti,
    required String deskripsi,
    required Map<String, String> audioFull,
    required List<QuranAyat> ayat,
    required SuratInfo suratSelanjutnya,
    required dynamic suratSebelumnya,
  }) = _QuranData;

  factory QuranData.fromJson(Map<String, dynamic> json) =>
      _$QuranDataFromJson(json);
}

@freezed
class QuranAyat with _$QuranAyat {
  const factory QuranAyat({
    required int nomorAyat,
    required String teksArab,
    required String teksLatin,
    required String teksIndonesia,
    bool? terbaca,

    required Map<String, String> audio,
  }) = _QuranAyat;

  factory QuranAyat.fromJson(Map<String, dynamic> json) =>
      _$QuranAyatFromJson(json);
}

@freezed
class SuratInfo with _$SuratInfo {
  const factory SuratInfo({
    required int nomor,
    required String nama,
    required String namaLatin,
    required int jumlahAyat,
  }) = _SuratInfo;

  factory SuratInfo.fromJson(Map<String, dynamic> json) =>
      _$SuratInfoFromJson(json);
}
