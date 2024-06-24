import 'package:freezed_annotation/freezed_annotation.dart';

part 'surah.g.dart';
part 'surah.freezed.dart';

@freezed
class Surat with _$Surat {
  const factory Surat({
     int? nomor,
     String? nama,
     String? namaLatin,
     int? jumlahAyat,
     String? tempatTurun,
     String? arti,
     String? deskripsi,
     required AudioFull audioFull,
  }) = _Surat;

  factory Surat.fromJson(Map<String, dynamic> json) => _$SuratFromJson(json);
}

@freezed
class AudioFull with _$AudioFull {
  const factory AudioFull({
     String? audio01,
     String? audio02,
     String? audio03,
     String? audio04,
     String? audio05,
  }) = _AudioFull;

  factory AudioFull.fromJson(Map<String, dynamic> json) => _$AudioFullFromJson(json);
}
