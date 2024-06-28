// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MateriImpl _$$MateriImplFromJson(Map<String, dynamic> json) => _$MateriImpl(
      contoh_soal: (json['contoh_soal'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      id: json['id'] as int?,
      jenisKuis: json['jenisKuis'] as String?,
      judul: json['judul'] as String?,
      kategori: json['kategori'] as String?,
      materi: json['materi'] as String?,
    );

Map<String, dynamic> _$$MateriImplToJson(_$MateriImpl instance) =>
    <String, dynamic>{
      'contoh_soal': instance.contoh_soal,
      'id': instance.id,
      'jenisKuis': instance.jenisKuis,
      'judul': instance.judul,
      'kategori': instance.kategori,
      'materi': instance.materi,
    };
