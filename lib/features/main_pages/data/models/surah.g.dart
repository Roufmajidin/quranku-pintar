// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuratImpl _$$SuratImplFromJson(Map<String, dynamic> json) => _$SuratImpl(
      nomor: (json['nomor'] as num?)?.toInt(),
      nama: json['nama'] as String?,
      namaLatin: json['namaLatin'] as String?,
      jumlahAyat: (json['jumlahAyat'] as num?)?.toInt(),
      tempatTurun: json['tempatTurun'] as String?,
      arti: json['arti'] as String?,
      deskripsi: json['deskripsi'] as String?,
      audioFull: AudioFull.fromJson(json['audioFull'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SuratImplToJson(_$SuratImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audioFull': instance.audioFull,
    };

_$AudioFullImpl _$$AudioFullImplFromJson(Map<String, dynamic> json) =>
    _$AudioFullImpl(
      audio01: json['audio01'] as String?,
      audio02: json['audio02'] as String?,
      audio03: json['audio03'] as String?,
      audio04: json['audio04'] as String?,
      audio05: json['audio05'] as String?,
    );

Map<String, dynamic> _$$AudioFullImplToJson(_$AudioFullImpl instance) =>
    <String, dynamic>{
      'audio01': instance.audio01,
      'audio02': instance.audio02,
      'audio03': instance.audio03,
      'audio04': instance.audio04,
      'audio05': instance.audio05,
    };
