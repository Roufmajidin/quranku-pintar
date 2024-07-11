// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MateriImpl _$$MateriImplFromJson(Map<String, dynamic> json) => _$MateriImpl(
      contoh_soal: json['contoh_soal'] as String?,
      id: json['id'] as int?,
      jenis_kuis: json['jenis_kuis'] as String?,
      judul: json['judul'] as String?,
      kategori: json['kategori'] as String?,
      materi: json['materi'] as String?,
      audio: json['audio'] as String?,
      is_learn: json['is_learn'] as int?,
    );

Map<String, dynamic> _$$MateriImplToJson(_$MateriImpl instance) =>
    <String, dynamic>{
      'contoh_soal': instance.contoh_soal,
      'id': instance.id,
      'jenis_kuis': instance.jenis_kuis,
      'judul': instance.judul,
      'kategori': instance.kategori,
      'materi': instance.materi,
      'audio': instance.audio,
      'is_learn': instance.is_learn,
    };

_$PenggunaImpl _$$PenggunaImplFromJson(Map<String, dynamic> json) =>
    _$PenggunaImpl(
      id: json['id'] as int?,
      device_pengguna: json['device_pengguna'] as String?,
      materi_id: json['materi_id'] as int?,
      is_learn: json['is_learn'] as int?,
      materi_detail: json['materi_detail'] == null
          ? null
          : Materi.fromJson(json['materi_detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PenggunaImplToJson(_$PenggunaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'device_pengguna': instance.device_pengguna,
      'materi_id': instance.materi_id,
      'is_learn': instance.is_learn,
      'materi_detail': instance.materi_detail,
    };
