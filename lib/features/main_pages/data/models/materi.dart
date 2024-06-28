import 'package:freezed_annotation/freezed_annotation.dart';
part 'materi.freezed.dart';
part 'materi.g.dart';

@freezed
class Materi with _$Materi {
  const factory Materi({
     @Default([]) List<String> contoh_soal,
     int? id,
     String? jenisKuis,
     String? judul,
     String? kategori,
     String? materi,
  }) = _Materi;

  factory Materi.fromJson(Map<String, dynamic> json) => _$MateriFromJson(json);
}
