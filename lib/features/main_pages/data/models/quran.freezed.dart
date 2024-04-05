// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranModels _$QuranModelsFromJson(Map<String, dynamic> json) {
  return _QuranModels.fromJson(json);
}

/// @nodoc
mixin _$QuranModels {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  QuranData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranModelsCopyWith<QuranModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranModelsCopyWith<$Res> {
  factory $QuranModelsCopyWith(
          QuranModels value, $Res Function(QuranModels) then) =
      _$QuranModelsCopyWithImpl<$Res, QuranModels>;
  @useResult
  $Res call({int? code, String? message, QuranData? data});

  $QuranDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$QuranModelsCopyWithImpl<$Res, $Val extends QuranModels>
    implements $QuranModelsCopyWith<$Res> {
  _$QuranModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuranData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuranDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $QuranDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranModelsImplCopyWith<$Res>
    implements $QuranModelsCopyWith<$Res> {
  factory _$$QuranModelsImplCopyWith(
          _$QuranModelsImpl value, $Res Function(_$QuranModelsImpl) then) =
      __$$QuranModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, QuranData? data});

  @override
  $QuranDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$QuranModelsImplCopyWithImpl<$Res>
    extends _$QuranModelsCopyWithImpl<$Res, _$QuranModelsImpl>
    implements _$$QuranModelsImplCopyWith<$Res> {
  __$$QuranModelsImplCopyWithImpl(
      _$QuranModelsImpl _value, $Res Function(_$QuranModelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$QuranModelsImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuranData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranModelsImpl implements _QuranModels {
  _$QuranModelsImpl({this.code, this.message, this.data});

  factory _$QuranModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranModelsImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final QuranData? data;

  @override
  String toString() {
    return 'QuranModels(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranModelsImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranModelsImplCopyWith<_$QuranModelsImpl> get copyWith =>
      __$$QuranModelsImplCopyWithImpl<_$QuranModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranModelsImplToJson(
      this,
    );
  }
}

abstract class _QuranModels implements QuranModels {
  factory _QuranModels(
      {final int? code,
      final String? message,
      final QuranData? data}) = _$QuranModelsImpl;

  factory _QuranModels.fromJson(Map<String, dynamic> json) =
      _$QuranModelsImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  QuranData? get data;
  @override
  @JsonKey(ignore: true)
  _$$QuranModelsImplCopyWith<_$QuranModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuranData _$QuranDataFromJson(Map<String, dynamic> json) {
  return _QuranData.fromJson(json);
}

/// @nodoc
mixin _$QuranData {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;
  String get tempatTurun => throw _privateConstructorUsedError;
  String get arti => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  Map<String, String> get audioFull => throw _privateConstructorUsedError;
  List<QuranAyat> get ayat => throw _privateConstructorUsedError;
  SuratInfo get suratSelanjutnya => throw _privateConstructorUsedError;
  dynamic get suratSebelumnya => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranDataCopyWith<QuranData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranDataCopyWith<$Res> {
  factory $QuranDataCopyWith(QuranData value, $Res Function(QuranData) then) =
      _$QuranDataCopyWithImpl<$Res, QuranData>;
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      Map<String, String> audioFull,
      List<QuranAyat> ayat,
      SuratInfo suratSelanjutnya,
      dynamic suratSebelumnya});

  $SuratInfoCopyWith<$Res> get suratSelanjutnya;
}

/// @nodoc
class _$QuranDataCopyWithImpl<$Res, $Val extends QuranData>
    implements $QuranDataCopyWith<$Res> {
  _$QuranDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? audioFull = null,
    Object? ayat = null,
    Object? suratSelanjutnya = null,
    Object? suratSebelumnya = freezed,
  }) {
    return _then(_value.copyWith(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      audioFull: null == audioFull
          ? _value.audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<QuranAyat>,
      suratSelanjutnya: null == suratSelanjutnya
          ? _value.suratSelanjutnya
          : suratSelanjutnya // ignore: cast_nullable_to_non_nullable
              as SuratInfo,
      suratSebelumnya: freezed == suratSebelumnya
          ? _value.suratSebelumnya
          : suratSebelumnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SuratInfoCopyWith<$Res> get suratSelanjutnya {
    return $SuratInfoCopyWith<$Res>(_value.suratSelanjutnya, (value) {
      return _then(_value.copyWith(suratSelanjutnya: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranDataImplCopyWith<$Res>
    implements $QuranDataCopyWith<$Res> {
  factory _$$QuranDataImplCopyWith(
          _$QuranDataImpl value, $Res Function(_$QuranDataImpl) then) =
      __$$QuranDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomor,
      String nama,
      String namaLatin,
      int jumlahAyat,
      String tempatTurun,
      String arti,
      String deskripsi,
      Map<String, String> audioFull,
      List<QuranAyat> ayat,
      SuratInfo suratSelanjutnya,
      dynamic suratSebelumnya});

  @override
  $SuratInfoCopyWith<$Res> get suratSelanjutnya;
}

/// @nodoc
class __$$QuranDataImplCopyWithImpl<$Res>
    extends _$QuranDataCopyWithImpl<$Res, _$QuranDataImpl>
    implements _$$QuranDataImplCopyWith<$Res> {
  __$$QuranDataImplCopyWithImpl(
      _$QuranDataImpl _value, $Res Function(_$QuranDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
    Object? tempatTurun = null,
    Object? arti = null,
    Object? deskripsi = null,
    Object? audioFull = null,
    Object? ayat = null,
    Object? suratSelanjutnya = null,
    Object? suratSebelumnya = freezed,
  }) {
    return _then(_$QuranDataImpl(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
      tempatTurun: null == tempatTurun
          ? _value.tempatTurun
          : tempatTurun // ignore: cast_nullable_to_non_nullable
              as String,
      arti: null == arti
          ? _value.arti
          : arti // ignore: cast_nullable_to_non_nullable
              as String,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      audioFull: null == audioFull
          ? _value._audioFull
          : audioFull // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      ayat: null == ayat
          ? _value._ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as List<QuranAyat>,
      suratSelanjutnya: null == suratSelanjutnya
          ? _value.suratSelanjutnya
          : suratSelanjutnya // ignore: cast_nullable_to_non_nullable
              as SuratInfo,
      suratSebelumnya: freezed == suratSebelumnya
          ? _value.suratSebelumnya
          : suratSebelumnya // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranDataImpl implements _QuranData {
  const _$QuranDataImpl(
      {required this.nomor,
      required this.nama,
      required this.namaLatin,
      required this.jumlahAyat,
      required this.tempatTurun,
      required this.arti,
      required this.deskripsi,
      required final Map<String, String> audioFull,
      required final List<QuranAyat> ayat,
      required this.suratSelanjutnya,
      required this.suratSebelumnya})
      : _audioFull = audioFull,
        _ayat = ayat;

  factory _$QuranDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranDataImplFromJson(json);

  @override
  final int nomor;
  @override
  final String nama;
  @override
  final String namaLatin;
  @override
  final int jumlahAyat;
  @override
  final String tempatTurun;
  @override
  final String arti;
  @override
  final String deskripsi;
  final Map<String, String> _audioFull;
  @override
  Map<String, String> get audioFull {
    if (_audioFull is EqualUnmodifiableMapView) return _audioFull;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_audioFull);
  }

  final List<QuranAyat> _ayat;
  @override
  List<QuranAyat> get ayat {
    if (_ayat is EqualUnmodifiableListView) return _ayat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayat);
  }

  @override
  final SuratInfo suratSelanjutnya;
  @override
  final dynamic suratSebelumnya;

  @override
  String toString() {
    return 'QuranData(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat, tempatTurun: $tempatTurun, arti: $arti, deskripsi: $deskripsi, audioFull: $audioFull, ayat: $ayat, suratSelanjutnya: $suratSelanjutnya, suratSebelumnya: $suratSebelumnya)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranDataImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
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
            const DeepCollectionEquality()
                .equals(other._audioFull, _audioFull) &&
            const DeepCollectionEquality().equals(other._ayat, _ayat) &&
            (identical(other.suratSelanjutnya, suratSelanjutnya) ||
                other.suratSelanjutnya == suratSelanjutnya) &&
            const DeepCollectionEquality()
                .equals(other.suratSebelumnya, suratSebelumnya));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nomor,
      nama,
      namaLatin,
      jumlahAyat,
      tempatTurun,
      arti,
      deskripsi,
      const DeepCollectionEquality().hash(_audioFull),
      const DeepCollectionEquality().hash(_ayat),
      suratSelanjutnya,
      const DeepCollectionEquality().hash(suratSebelumnya));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranDataImplCopyWith<_$QuranDataImpl> get copyWith =>
      __$$QuranDataImplCopyWithImpl<_$QuranDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranDataImplToJson(
      this,
    );
  }
}

abstract class _QuranData implements QuranData {
  const factory _QuranData(
      {required final int nomor,
      required final String nama,
      required final String namaLatin,
      required final int jumlahAyat,
      required final String tempatTurun,
      required final String arti,
      required final String deskripsi,
      required final Map<String, String> audioFull,
      required final List<QuranAyat> ayat,
      required final SuratInfo suratSelanjutnya,
      required final dynamic suratSebelumnya}) = _$QuranDataImpl;

  factory _QuranData.fromJson(Map<String, dynamic> json) =
      _$QuranDataImpl.fromJson;

  @override
  int get nomor;
  @override
  String get nama;
  @override
  String get namaLatin;
  @override
  int get jumlahAyat;
  @override
  String get tempatTurun;
  @override
  String get arti;
  @override
  String get deskripsi;
  @override
  Map<String, String> get audioFull;
  @override
  List<QuranAyat> get ayat;
  @override
  SuratInfo get suratSelanjutnya;
  @override
  dynamic get suratSebelumnya;
  @override
  @JsonKey(ignore: true)
  _$$QuranDataImplCopyWith<_$QuranDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QuranAyat _$QuranAyatFromJson(Map<String, dynamic> json) {
  return _QuranAyat.fromJson(json);
}

/// @nodoc
mixin _$QuranAyat {
  int get nomorAyat => throw _privateConstructorUsedError;
  String get teksArab => throw _privateConstructorUsedError;
  String get teksLatin => throw _privateConstructorUsedError;
  String get teksIndonesia => throw _privateConstructorUsedError;
  bool? get terbaca => throw _privateConstructorUsedError;
  Map<String, String> get audio => throw _privateConstructorUsedError;
  List<TajweedToken?> get toke => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranAyatCopyWith<QuranAyat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranAyatCopyWith<$Res> {
  factory $QuranAyatCopyWith(QuranAyat value, $Res Function(QuranAyat) then) =
      _$QuranAyatCopyWithImpl<$Res, QuranAyat>;
  @useResult
  $Res call(
      {int nomorAyat,
      String teksArab,
      String teksLatin,
      String teksIndonesia,
      bool? terbaca,
      Map<String, String> audio,
      List<TajweedToken?> toke});
}

/// @nodoc
class _$QuranAyatCopyWithImpl<$Res, $Val extends QuranAyat>
    implements $QuranAyatCopyWith<$Res> {
  _$QuranAyatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
    Object? terbaca = freezed,
    Object? audio = null,
    Object? toke = null,
  }) {
    return _then(_value.copyWith(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
      terbaca: freezed == terbaca
          ? _value.terbaca
          : terbaca // ignore: cast_nullable_to_non_nullable
              as bool?,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      toke: null == toke
          ? _value.toke
          : toke // ignore: cast_nullable_to_non_nullable
              as List<TajweedToken?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranAyatImplCopyWith<$Res>
    implements $QuranAyatCopyWith<$Res> {
  factory _$$QuranAyatImplCopyWith(
          _$QuranAyatImpl value, $Res Function(_$QuranAyatImpl) then) =
      __$$QuranAyatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int nomorAyat,
      String teksArab,
      String teksLatin,
      String teksIndonesia,
      bool? terbaca,
      Map<String, String> audio,
      List<TajweedToken?> toke});
}

/// @nodoc
class __$$QuranAyatImplCopyWithImpl<$Res>
    extends _$QuranAyatCopyWithImpl<$Res, _$QuranAyatImpl>
    implements _$$QuranAyatImplCopyWith<$Res> {
  __$$QuranAyatImplCopyWithImpl(
      _$QuranAyatImpl _value, $Res Function(_$QuranAyatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomorAyat = null,
    Object? teksArab = null,
    Object? teksLatin = null,
    Object? teksIndonesia = null,
    Object? terbaca = freezed,
    Object? audio = null,
    Object? toke = null,
  }) {
    return _then(_$QuranAyatImpl(
      nomorAyat: null == nomorAyat
          ? _value.nomorAyat
          : nomorAyat // ignore: cast_nullable_to_non_nullable
              as int,
      teksArab: null == teksArab
          ? _value.teksArab
          : teksArab // ignore: cast_nullable_to_non_nullable
              as String,
      teksLatin: null == teksLatin
          ? _value.teksLatin
          : teksLatin // ignore: cast_nullable_to_non_nullable
              as String,
      teksIndonesia: null == teksIndonesia
          ? _value.teksIndonesia
          : teksIndonesia // ignore: cast_nullable_to_non_nullable
              as String,
      terbaca: freezed == terbaca
          ? _value.terbaca
          : terbaca // ignore: cast_nullable_to_non_nullable
              as bool?,
      audio: null == audio
          ? _value._audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      toke: null == toke
          ? _value._toke
          : toke // ignore: cast_nullable_to_non_nullable
              as List<TajweedToken?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranAyatImpl implements _QuranAyat {
  const _$QuranAyatImpl(
      {required this.nomorAyat,
      required this.teksArab,
      required this.teksLatin,
      required this.teksIndonesia,
      this.terbaca,
      required final Map<String, String> audio,
      required final List<TajweedToken?> toke})
      : _audio = audio,
        _toke = toke;

  factory _$QuranAyatImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranAyatImplFromJson(json);

  @override
  final int nomorAyat;
  @override
  final String teksArab;
  @override
  final String teksLatin;
  @override
  final String teksIndonesia;
  @override
  final bool? terbaca;
  final Map<String, String> _audio;
  @override
  Map<String, String> get audio {
    if (_audio is EqualUnmodifiableMapView) return _audio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_audio);
  }

  final List<TajweedToken?> _toke;
  @override
  List<TajweedToken?> get toke {
    if (_toke is EqualUnmodifiableListView) return _toke;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toke);
  }

  @override
  String toString() {
    return 'QuranAyat(nomorAyat: $nomorAyat, teksArab: $teksArab, teksLatin: $teksLatin, teksIndonesia: $teksIndonesia, terbaca: $terbaca, audio: $audio, toke: $toke)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranAyatImpl &&
            (identical(other.nomorAyat, nomorAyat) ||
                other.nomorAyat == nomorAyat) &&
            (identical(other.teksArab, teksArab) ||
                other.teksArab == teksArab) &&
            (identical(other.teksLatin, teksLatin) ||
                other.teksLatin == teksLatin) &&
            (identical(other.teksIndonesia, teksIndonesia) ||
                other.teksIndonesia == teksIndonesia) &&
            (identical(other.terbaca, terbaca) || other.terbaca == terbaca) &&
            const DeepCollectionEquality().equals(other._audio, _audio) &&
            const DeepCollectionEquality().equals(other._toke, _toke));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nomorAyat,
      teksArab,
      teksLatin,
      teksIndonesia,
      terbaca,
      const DeepCollectionEquality().hash(_audio),
      const DeepCollectionEquality().hash(_toke));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranAyatImplCopyWith<_$QuranAyatImpl> get copyWith =>
      __$$QuranAyatImplCopyWithImpl<_$QuranAyatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranAyatImplToJson(
      this,
    );
  }
}

abstract class _QuranAyat implements QuranAyat {
  const factory _QuranAyat(
      {required final int nomorAyat,
      required final String teksArab,
      required final String teksLatin,
      required final String teksIndonesia,
      final bool? terbaca,
      required final Map<String, String> audio,
      required final List<TajweedToken?> toke}) = _$QuranAyatImpl;

  factory _QuranAyat.fromJson(Map<String, dynamic> json) =
      _$QuranAyatImpl.fromJson;

  @override
  int get nomorAyat;
  @override
  String get teksArab;
  @override
  String get teksLatin;
  @override
  String get teksIndonesia;
  @override
  bool? get terbaca;
  @override
  Map<String, String> get audio;
  @override
  List<TajweedToken?> get toke;
  @override
  @JsonKey(ignore: true)
  _$$QuranAyatImplCopyWith<_$QuranAyatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SuratInfo _$SuratInfoFromJson(Map<String, dynamic> json) {
  return _SuratInfo.fromJson(json);
}

/// @nodoc
mixin _$SuratInfo {
  int get nomor => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  String get namaLatin => throw _privateConstructorUsedError;
  int get jumlahAyat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuratInfoCopyWith<SuratInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuratInfoCopyWith<$Res> {
  factory $SuratInfoCopyWith(SuratInfo value, $Res Function(SuratInfo) then) =
      _$SuratInfoCopyWithImpl<$Res, SuratInfo>;
  @useResult
  $Res call({int nomor, String nama, String namaLatin, int jumlahAyat});
}

/// @nodoc
class _$SuratInfoCopyWithImpl<$Res, $Val extends SuratInfo>
    implements $SuratInfoCopyWith<$Res> {
  _$SuratInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
  }) {
    return _then(_value.copyWith(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuratInfoImplCopyWith<$Res>
    implements $SuratInfoCopyWith<$Res> {
  factory _$$SuratInfoImplCopyWith(
          _$SuratInfoImpl value, $Res Function(_$SuratInfoImpl) then) =
      __$$SuratInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int nomor, String nama, String namaLatin, int jumlahAyat});
}

/// @nodoc
class __$$SuratInfoImplCopyWithImpl<$Res>
    extends _$SuratInfoCopyWithImpl<$Res, _$SuratInfoImpl>
    implements _$$SuratInfoImplCopyWith<$Res> {
  __$$SuratInfoImplCopyWithImpl(
      _$SuratInfoImpl _value, $Res Function(_$SuratInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nomor = null,
    Object? nama = null,
    Object? namaLatin = null,
    Object? jumlahAyat = null,
  }) {
    return _then(_$SuratInfoImpl(
      nomor: null == nomor
          ? _value.nomor
          : nomor // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      namaLatin: null == namaLatin
          ? _value.namaLatin
          : namaLatin // ignore: cast_nullable_to_non_nullable
              as String,
      jumlahAyat: null == jumlahAyat
          ? _value.jumlahAyat
          : jumlahAyat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuratInfoImpl implements _SuratInfo {
  const _$SuratInfoImpl(
      {required this.nomor,
      required this.nama,
      required this.namaLatin,
      required this.jumlahAyat});

  factory _$SuratInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuratInfoImplFromJson(json);

  @override
  final int nomor;
  @override
  final String nama;
  @override
  final String namaLatin;
  @override
  final int jumlahAyat;

  @override
  String toString() {
    return 'SuratInfo(nomor: $nomor, nama: $nama, namaLatin: $namaLatin, jumlahAyat: $jumlahAyat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuratInfoImpl &&
            (identical(other.nomor, nomor) || other.nomor == nomor) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.namaLatin, namaLatin) ||
                other.namaLatin == namaLatin) &&
            (identical(other.jumlahAyat, jumlahAyat) ||
                other.jumlahAyat == jumlahAyat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nomor, nama, namaLatin, jumlahAyat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuratInfoImplCopyWith<_$SuratInfoImpl> get copyWith =>
      __$$SuratInfoImplCopyWithImpl<_$SuratInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuratInfoImplToJson(
      this,
    );
  }
}

abstract class _SuratInfo implements SuratInfo {
  const factory _SuratInfo(
      {required final int nomor,
      required final String nama,
      required final String namaLatin,
      required final int jumlahAyat}) = _$SuratInfoImpl;

  factory _SuratInfo.fromJson(Map<String, dynamic> json) =
      _$SuratInfoImpl.fromJson;

  @override
  int get nomor;
  @override
  String get nama;
  @override
  String get namaLatin;
  @override
  int get jumlahAyat;
  @override
  @JsonKey(ignore: true)
  _$$SuratInfoImplCopyWith<_$SuratInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
