import 'package:freezed_annotation/freezed_annotation.dart';
part 'materi.freezed.dart';
part 'materi.g.dart';

@freezed
class Materi with _$Materi {
  const factory Materi({
     required List<String> contoh_soal,
     int? id,
     String? jenis_kuis,
     String? judul,
     String? kategori,
     String? materi,
     String? audio,
     int? is_learn,
  }) = _Materi;

  factory Materi.fromJson(Map<String, dynamic> json) => _$MateriFromJson(json);
}
@freezed
class Pengguna with _$Pengguna {
  const factory Pengguna({
    int? id,
    String? device_pengguna,
    int? materi_id,
    int? is_learn,
    Materi? materi_detail,
  }) = _Pengguna;

  factory Pengguna.fromJson(Map<String, dynamic> json) => _$PenggunaFromJson(json);
}
