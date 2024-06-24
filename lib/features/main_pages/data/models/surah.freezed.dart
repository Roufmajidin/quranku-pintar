// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Surat _$SuratFromJson(Map<String, dynamic> json) {
  return _Surat.fromJson(json);
}

/// @nodoc
mixin _$Surat {
  dynamic get nomor => throw _privateConstructorUsedError;
  String? get nama => throw _privateConstructorUsedError;
  String? get namaLatin => throw _privateConstructorUsedError;
  int? get jumlahAyat => throw _privateConstructorUsedError;
  String? get tempatTurun => throw _privateConstructorUsedError;
  String? get arti => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  AudioFull? get audioFull => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuratCopyWith<Surat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuratCopyWith<$Res> {
  factory $SuratCopyWith(Surat value, $Res Function(Surat) then) =
      _$SuratCopyWithImpl<$Res, Surat>;
  @useResult
  $Res call(
      {dynamic nomor,
      String? nama,
      String? namaLatin,
      int? jumlahAyat,
      String? tempatTurun,
      String? arti,
      String? deskripsi,
      AudioFull? audioFull});

  $AudioFullCopyWith<$Res>? get audioFull;
}

/// @nodoc
class _$SuratCopyWithImpl<$Res, $Val extends Surat>
    implements $SuratCopyWith<$Res> {
  _$SuratCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? nama = freezed,
    Object? namaLatin = freezed,
    Object? jumlahAyat = freezed,
    Object? tempatTurun = freezed,
    Object? arti = freezed,
    Object? deskripsi = freezed,
    Object? audioFull = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLatin: freezed == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahAyat: freezed == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatTurun: freezed == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String?,
      arti: freezed == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      audioFull: freezed == audioFull
          ? _value.audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as AudioFull?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioFullCopyWith<$Res>? get audioFull {
    if (_value.audioFull == null) {
      return null;
    }

    return $AudioFullCopyWith<$Res>(_value.audioFull!, (value) {
      return _then(_value.copyWith(audioFull: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuratImplCopyWith<$Res> implements $SuratCopyWith<$Res> {
  factory _$$SuratImplCopyWith(
          _$SuratImpl value, $Res Function(_$SuratImpl) then) =
      __$$SuratImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic nomor,
      String? nama,
      String? namaLatin,
      int? jumlahAyat,
      String? tempatTurun,
      String? arti,
      String? deskripsi,
      AudioFull? audioFull});

  @override
  $AudioFullCopyWith<$Res>? get audioFull;
}

/// @nodoc
class __$$SuratImplCopyWithImpl<$Res>
    extends _$SuratCopyWithImpl<$Res, _$SuratImpl>
    implements _$$SuratImplCopyWith<$Res> {
  __$$SuratImplCopyWithImpl(
      _$SuratImpl _value, $Res Function(_$SuratImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = freezed,
    Object? nama = freezed,
    Object? namaLatin = freezed,
    Object? jumlahAyat = freezed,
    Object? tempatTurun = freezed,
    Object? arti = freezed,
    Object? deskripsi = freezed,
    Object? audioFull = freezed,
  }) {
    return _then(_$SuratImpl(
      nomor: freezed == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      namaLatin: freezed == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahAyat: freezed == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int?,
      tempatTurun: freezed == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String?,
      arti: freezed == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      audioFull: freezed == audioFull
          ? _value.audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as AudioFull?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuratImpl implements _Surat {
  const _$SuratImpl(
      {this.nomor,
      this.nama,
      this.namaLatin,
      this.jumlahAyat,
      this.tempatTurun,
      this.arti,
      this.deskripsi,
      this.audioFull});

  factory _$SuratImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuratImplFromJson(json);

  @override
  final dynamic nomor;
  @override
  final String? nama;
  @override
  final String? namaLatin;
  @override
  final int? jumlahAyat;
  @override
  final String? tempatTurun;
  @override
  final String? arti;
  @override
  final String? deskripsi;
  @override
  final AudioFull? audioFull;

  @override
  String toString() {
    return 'Surat(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, audioFull: $audioFull)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuratImpl &&
            const DeepCollectionEquality().equals(other.nomor, nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaLatin, namaLatin) ||
                other.namaLatin == namaLatin) &&
            (identical(other.jumlahAyat, jumlahAyat) ||
                other.jumlahAyat == jumlahAyat) &&
            (identical(other.tempatTurun, tempatTurun) ||
                other.tempatTurun == tempatTurun) &&
            (identical(other.arti, arti) || other.arti == arti) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.audioFull, audioFull) ||
                other.audioFull == audioFull));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nomor),
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      audioFull);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuratImplCopyWith<_$SuratImpl> get copyWith =>
      __$$SuratImplCopyWithImpl<_$SuratImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuratImplToJson(
      this,
    );
  }
}

abstract class _Surat implements Surat {
  const factory _Surat(
      {final dynamic nomor,
      final String? nama,
      final String? namaLatin,
      final int? jumlahAyat,
      final String? tempatTurun,
      final String? arti,
      final String? deskripsi,
      final AudioFull? audioFull}) = _$SuratImpl;

  factory _Surat.fromJson(Map<String, dynamic> json) = _$SuratImpl.fromJson;

  @override
  dynamic get nomor;
  @override
  String? get nama;
  @override
  String? get namaLatin;
  @override
  int? get jumlahAyat;
  @override
  String? get tempatTurun;
  @override
  String? get arti;
  @override
  String? get deskripsi;
  @override
  AudioFull? get audioFull;
  @override
  @JsonKey(ignore: true)
  _$$SuratImplCopyWith<_$SuratImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioFull _$AudioFullFromJson(Map<String, dynamic> json) {
  return _AudioFull.fromJson(json);
}

/// @nodoc
mixin _$AudioFull {
  String get audio01 => throw _privateConstructorUsedError;
  String get audio02 => throw _privateConstructorUsedError;
  String get audio03 => throw _privateConstructorUsedError;
  String get audio04 => throw _privateConstructorUsedError;
  String get audio05 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioFullCopyWith<AudioFull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioFullCopyWith<$Res> {
  factory $AudioFullCopyWith(AudioFull value, $Res Function(AudioFull) then) =
      _$AudioFullCopyWithImpl<$Res, AudioFull>;
  @useResult
  $Res call(
      {String audio01,
      String audio02,
      String audio03,
      String audio04,
      String audio05});
}

/// @nodoc
class _$AudioFullCopyWithImpl<$Res, $Val extends AudioFull>
    implements $AudioFullCopyWith<$Res> {
  _$AudioFullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio01 = null,
    Object? audio02 = null,
    Object? audio03 = null,
    Object? audio04 = null,
    Object? audio05 = null,
  }) {
    return _then(_value.copyWith(
      audio01: null == audio01
          ? _value.audio01
          : audio01 // ignore: cast_nullable_to_non_nullable
              as String,
      audio02: null == audio02
          ? _value.audio02
          : audio02 // ignore: cast_nullable_to_non_nullable
              as String,
      audio03: null == audio03
          ? _value.audio03
          : audio03 // ignore: cast_nullable_to_non_nullable
              as String,
      audio04: null == audio04
          ? _value.audio04
          : audio04 // ignore: cast_nullable_to_non_nullable
              as String,
      audio05: null == audio05
          ? _value.audio05
          : audio05 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioFullImplCopyWith<$Res>
    implements $AudioFullCopyWith<$Res> {
  factory _$$AudioFullImplCopyWith(
          _$AudioFullImpl value, $Res Function(_$AudioFullImpl) then) =
      __$$AudioFullImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String audio01,
      String audio02,
      String audio03,
      String audio04,
      String audio05});
}

/// @nodoc
class __$$AudioFullImplCopyWithImpl<$Res>
    extends _$AudioFullCopyWithImpl<$Res, _$AudioFullImpl>
    implements _$$AudioFullImplCopyWith<$Res> {
  __$$AudioFullImplCopyWithImpl(
      _$AudioFullImpl _value, $Res Function(_$AudioFullImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audio01 = null,
    Object? audio02 = null,
    Object? audio03 = null,
    Object? audio04 = null,
    Object? audio05 = null,
  }) {
    return _then(_$AudioFullImpl(
      audio01: null == audio01
          ? _value.audio01
          : audio01 // ignore: cast_nullable_to_non_nullable
              as String,
      audio02: null == audio02
          ? _value.audio02
          : audio02 // ignore: cast_nullable_to_non_nullable
              as String,
      audio03: null == audio03
          ? _value.audio03
          : audio03 // ignore: cast_nullable_to_non_nullable
              as String,
      audio04: null == audio04
          ? _value.audio04
          : audio04 // ignore: cast_nullable_to_non_nullable
              as String,
      audio05: null == audio05
          ? _value.audio05
          : audio05 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioFullImpl implements _AudioFull {
  const _$AudioFullImpl(
      {required this.audio01,
      required this.audio02,
      required this.audio03,
      required this.audio04,
      required this.audio05});

  factory _$AudioFullImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioFullImplFromJson(json);

  @override
  final String audio01;
  @override
  final String audio02;
  @override
  final String audio03;
  @override
  final String audio04;
  @override
  final String audio05;

  @override
  String toString() {
    return 'AudioFull(audio01: $audio01, audio02: $audio02, audio03: $audio03, audio04: $audio04, audio05: $audio05)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioFullImpl &&
            (identical(other.audio01, audio01) || other.audio01 == audio01) &&
            (identical(other.audio02, audio02) || other.audio02 == audio02) &&
            (identical(other.audio03, audio03) || other.audio03 == audio03) &&
            (identical(other.audio04, audio04) || other.audio04 == audio04) &&
            (identical(other.audio05, audio05) || other.audio05 == audio05));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, audio01, audio02, audio03, audio04, audio05);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioFullImplCopyWith<_$AudioFullImpl> get copyWith =>
      __$$AudioFullImplCopyWithImpl<_$AudioFullImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioFullImplToJson(
      this,
    );
  }
}

abstract class _AudioFull implements AudioFull {
  const factory _AudioFull(
      {required final String audio01,
      required final String audio02,
      required final String audio03,
      required final String audio04,
      required final String audio05}) = _$AudioFullImpl;

  factory _AudioFull.fromJson(Map<String, dynamic> json) =
      _$AudioFullImpl.fromJson;

  @override
  String get audio01;
  @override
  String get audio02;
  @override
  String get audio03;
  @override
  String get audio04;
  @override
  String get audio05;
  @override
  @JsonKey(ignore: true)
  _$$AudioFullImplCopyWith<_$AudioFullImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
