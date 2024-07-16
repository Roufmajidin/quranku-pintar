// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranModelsImpl _$$QuranModelsImplFromJson(Map<String, dynamic> json) =>
    _$QuranModelsImpl(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : QuranData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuranModelsImplToJson(_$QuranModelsImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$QuranDataImpl _$$QuranDataImplFromJson(Map<String, dynamic> json) =>
    _$QuranDataImpl(
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      namaLatin: json['namaLatin'] as String,
      jumlahAyat: (json['jumlahAyat'] as num).toInt(),
      tempatTurun: json['tempatTurun'] as String,
      arti: json['arti'] as String,
      deskripsi: json['deskripsi'] as String,
      audioFull: Map<String, String>.from(json['audioFull'] as Map),
      ayat: (json['ayat'] as List<dynamic>)
          .map((e) => QuranAyat.fromJson(e as Map<String, dynamic>))
          .toList(),
      suratSelanjutnya:
          SuratInfo.fromJson(json['suratSelanjutnya'] as Map<String, dynamic>),
      suratSebelumnya: json['suratSebelumnya'],
    );

Map<String, dynamic> _$$QuranDataImplToJson(_$QuranDataImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
      'tempatTurun': instance.tempatTurun,
      'arti': instance.arti,
      'deskripsi': instance.deskripsi,
      'audioFull': instance.audioFull,
      'ayat': instance.ayat,
      'suratSelanjutnya': instance.suratSelanjutnya,
      'suratSebelumnya': instance.suratSebelumnya,
    };

_$QuranAyatImpl _$$QuranAyatImplFromJson(Map<String, dynamic> json) =>
    _$QuranAyatImpl(
      nomorAyat: (json['nomorAyat'] as num).toInt(),
      teksArab: json['teksArab'] as String,
      teksLatin: json['teksLatin'] as String,
      teksIndonesia: json['teksIndonesia'] as String,
      terbaca: json['terbaca'] as bool?,
      audio: Map<String, String>.from(json['audio'] as Map),
      toke: (json['toke'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : TajweedToken.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuranAyatImplToJson(_$QuranAyatImpl instance) =>
    <String, dynamic>{
      'nomorAyat': instance.nomorAyat,
      'teksArab': instance.teksArab,
      'teksLatin': instance.teksLatin,
      'teksIndonesia': instance.teksIndonesia,
      'terbaca': instance.terbaca,
      'audio': instance.audio,
      'toke': instance.toke,
    };

_$SuratInfoImpl _$$SuratInfoImplFromJson(Map<String, dynamic> json) =>
    _$SuratInfoImpl(
      nomor: (json['nomor'] as num).toInt(),
      nama: json['nama'] as String,
      namaLatin: json['namaLatin'] as String,
      jumlahAyat: (json['jumlahAyat'] as num).toInt(),
    );

Map<String, dynamic> _$$SuratInfoImplToJson(_$SuratInfoImpl instance) =>
    <String, dynamic>{
      'nomor': instance.nomor,
      'nama': instance.nama,
      'namaLatin': instance.namaLatin,
      'jumlahAyat': instance.jumlahAyat,
    };
