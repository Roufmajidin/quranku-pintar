import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.g.dart';
part 'surah.freezed.dart';

@freezed
class Surat with _$Surat {
  const factory Surat({
     dynamic nomor,
     String? nama,
     String? namaLatin,
     int? jumlahAyat,
     String? tempatTurun,
     String? arti,
     String? deskripsi,
     AudioFull? audioFull,
  }) = _Surat;

  factory Surat.fromJson(Map<String, dynamic> json) => _$SuratFromJson(json);
}

@freezed
class AudioFull with _$AudioFull {
  const factory AudioFull({
    required String audio01,
    required String audio02,
    required String audio03,
    required String audio04,
    required String audio05,
  }) = _AudioFull;

  factory AudioFull.fromJson(Map<String, dynamic> json) => _$AudioFullFromJson(json);
}
