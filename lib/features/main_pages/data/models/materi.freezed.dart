// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'materi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Materi _$MateriFromJson(Map<String, dynamic> json) {
  return _Materi.fromJson(json);
}

/// @nodoc
mixin _$Materi {
  String? get contoh_soal => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get jenis_kuis => throw _privateConstructorUsedError;
  String? get judul => throw _privateConstructorUsedError;
  String? get kategori => throw _privateConstructorUsedError;
  String? get materi => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  int? get is_learn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MateriCopyWith<Materi> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MateriCopyWith<$Res> {
  factory $MateriCopyWith(Materi value, $Res Function(Materi) then) =
      _$MateriCopyWithImpl<$Res, Materi>;
  @useResult
  $Res call(
      {String? contoh_soal,
      int? id,
      String? jenis_kuis,
      String? judul,
      String? kategori,
      String? materi,
      String? audio,
      int? is_learn});
}

/// @nodoc
class _$MateriCopyWithImpl<$Res, $Val extends Materi>
    implements $MateriCopyWith<$Res> {
  _$MateriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contoh_soal = freezed,
    Object? id = freezed,
    Object? jenis_kuis = freezed,
    Object? judul = freezed,
    Object? kategori = freezed,
    Object? materi = freezed,
    Object? audio = freezed,
    Object? is_learn = freezed,
  }) {
    return _then(_value.copyWith(
      contoh_soal: freezed == contoh_soal
          ? _value.contoh_soal
          : contoh_soal // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      jenis_kuis: freezed == jenis_kuis
          ? _value.jenis_kuis
          : jenis_kuis // ignore: cast_nullable_to_non_nullable
              as String?,
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
      materi: freezed == materi
          ? _value.materi
          : materi // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      is_learn: freezed == is_learn
          ? _value.is_learn
          : is_learn // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MateriImplCopyWith<$Res> implements $MateriCopyWith<$Res> {
  factory _$$MateriImplCopyWith(
          _$MateriImpl value, $Res Function(_$MateriImpl) then) =
      __$$MateriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? contoh_soal,
      int? id,
      String? jenis_kuis,
      String? judul,
      String? kategori,
      String? materi,
      String? audio,
      int? is_learn});
}

/// @nodoc
class __$$MateriImplCopyWithImpl<$Res>
    extends _$MateriCopyWithImpl<$Res, _$MateriImpl>
    implements _$$MateriImplCopyWith<$Res> {
  __$$MateriImplCopyWithImpl(
      _$MateriImpl _value, $Res Function(_$MateriImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contoh_soal = freezed,
    Object? id = freezed,
    Object? jenis_kuis = freezed,
    Object? judul = freezed,
    Object? kategori = freezed,
    Object? materi = freezed,
    Object? audio = freezed,
    Object? is_learn = freezed,
  }) {
    return _then(_$MateriImpl(
      contoh_soal: freezed == contoh_soal
          ? _value.contoh_soal
          : contoh_soal // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      jenis_kuis: freezed == jenis_kuis
          ? _value.jenis_kuis
          : jenis_kuis // ignore: cast_nullable_to_non_nullable
              as String?,
      judul: freezed == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
      materi: freezed == materi
          ? _value.materi
          : materi // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      is_learn: freezed == is_learn
          ? _value.is_learn
          : is_learn // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MateriImpl implements _Materi {
  const _$MateriImpl(
      {this.contoh_soal,
      this.id,
      this.jenis_kuis,
      this.judul,
      this.kategori,
      this.materi,
      this.audio,
      this.is_learn});

  factory _$MateriImpl.fromJson(Map<String, dynamic> json) =>
      _$$MateriImplFromJson(json);

  @override
  final String? contoh_soal;
  @override
  final int? id;
  @override
  final String? jenis_kuis;
  @override
  final String? judul;
  @override
  final String? kategori;
  @override
  final String? materi;
  @override
  final String? audio;
  @override
  final int? is_learn;

  @override
  String toString() {
    return 'Materi(contoh_soal: $contoh_soal, id: $id, jenis_kuis: $jenis_kuis, judul: $judul, kategori: $kategori, materi: $materi, audio: $audio, is_learn: $is_learn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MateriImpl &&
            (identical(other.contoh_soal, contoh_soal) ||
                other.contoh_soal == contoh_soal) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jenis_kuis, jenis_kuis) ||
                other.jenis_kuis == jenis_kuis) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.materi, materi) || other.materi == materi) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.is_learn, is_learn) ||
                other.is_learn == is_learn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contoh_soal, id, jenis_kuis,
      judul, kategori, materi, audio, is_learn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MateriImplCopyWith<_$MateriImpl> get copyWith =>
      __$$MateriImplCopyWithImpl<_$MateriImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MateriImplToJson(
      this,
    );
  }
}

abstract class _Materi implements Materi {
  const factory _Materi(
      {final String? contoh_soal,
      final int? id,
      final String? jenis_kuis,
      final String? judul,
      final String? kategori,
      final String? materi,
      final String? audio,
      final int? is_learn}) = _$MateriImpl;

  factory _Materi.fromJson(Map<String, dynamic> json) = _$MateriImpl.fromJson;

  @override
  String? get contoh_soal;
  @override
  int? get id;
  @override
  String? get jenis_kuis;
  @override
  String? get judul;
  @override
  String? get kategori;
  @override
  String? get materi;
  @override
  String? get audio;
  @override
  int? get is_learn;
  @override
  @JsonKey(ignore: true)
  _$$MateriImplCopyWith<_$MateriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pengguna _$PenggunaFromJson(Map<String, dynamic> json) {
  return _Pengguna.fromJson(json);
}

/// @nodoc
mixin _$Pengguna {
  int? get id => throw _privateConstructorUsedError;
  String? get device_pengguna => throw _privateConstructorUsedError;
  int? get materi_id => throw _privateConstructorUsedError;
  int? get is_learn => throw _privateConstructorUsedError;
  Materi? get materi_detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PenggunaCopyWith<Pengguna> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenggunaCopyWith<$Res> {
  factory $PenggunaCopyWith(Pengguna value, $Res Function(Pengguna) then) =
      _$PenggunaCopyWithImpl<$Res, Pengguna>;
  @useResult
  $Res call(
      {int? id,
      String? device_pengguna,
      int? materi_id,
      int? is_learn,
      Materi? materi_detail});

  $MateriCopyWith<$Res>? get materi_detail;
}

/// @nodoc
class _$PenggunaCopyWithImpl<$Res, $Val extends Pengguna>
    implements $PenggunaCopyWith<$Res> {
  _$PenggunaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? device_pengguna = freezed,
    Object? materi_id = freezed,
    Object? is_learn = freezed,
    Object? materi_detail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      device_pengguna: freezed == device_pengguna
          ? _value.device_pengguna
          : device_pengguna // ignore: cast_nullable_to_non_nullable
              as String?,
      materi_id: freezed == materi_id
          ? _value.materi_id
          : materi_id // ignore: cast_nullable_to_non_nullable
              as int?,
      is_learn: freezed == is_learn
          ? _value.is_learn
          : is_learn // ignore: cast_nullable_to_non_nullable
              as int?,
      materi_detail: freezed == materi_detail
          ? _value.materi_detail
          : materi_detail // ignore: cast_nullable_to_non_nullable
              as Materi?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MateriCopyWith<$Res>? get materi_detail {
    if (_value.materi_detail == null) {
      return null;
    }

    return $MateriCopyWith<$Res>(_value.materi_detail!, (value) {
      return _then(_value.copyWith(materi_detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PenggunaImplCopyWith<$Res>
    implements $PenggunaCopyWith<$Res> {
  factory _$$PenggunaImplCopyWith(
          _$PenggunaImpl value, $Res Function(_$PenggunaImpl) then) =
      __$$PenggunaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? device_pengguna,
      int? materi_id,
      int? is_learn,
      Materi? materi_detail});

  @override
  $MateriCopyWith<$Res>? get materi_detail;
}

/// @nodoc
class __$$PenggunaImplCopyWithImpl<$Res>
    extends _$PenggunaCopyWithImpl<$Res, _$PenggunaImpl>
    implements _$$PenggunaImplCopyWith<$Res> {
  __$$PenggunaImplCopyWithImpl(
      _$PenggunaImpl _value, $Res Function(_$PenggunaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? device_pengguna = freezed,
    Object? materi_id = freezed,
    Object? is_learn = freezed,
    Object? materi_detail = freezed,
  }) {
    return _then(_$PenggunaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      device_pengguna: freezed == device_pengguna
          ? _value.device_pengguna
          : device_pengguna // ignore: cast_nullable_to_non_nullable
              as String?,
      materi_id: freezed == materi_id
          ? _value.materi_id
          : materi_id // ignore: cast_nullable_to_non_nullable
              as int?,
      is_learn: freezed == is_learn
          ? _value.is_learn
          : is_learn // ignore: cast_nullable_to_non_nullable
              as int?,
      materi_detail: freezed == materi_detail
          ? _value.materi_detail
          : materi_detail // ignore: cast_nullable_to_non_nullable
              as Materi?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PenggunaImpl implements _Pengguna {
  const _$PenggunaImpl(
      {this.id,
      this.device_pengguna,
      this.materi_id,
      this.is_learn,
      this.materi_detail});

  factory _$PenggunaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PenggunaImplFromJson(json);

  @override
  final int? id;
  @override
  final String? device_pengguna;
  @override
  final int? materi_id;
  @override
  final int? is_learn;
  @override
  final Materi? materi_detail;

  @override
  String toString() {
    return 'Pengguna(id: $id, device_pengguna: $device_pengguna, materi_id: $materi_id, is_learn: $is_learn, materi_detail: $materi_detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenggunaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.device_pengguna, device_pengguna) ||
                other.device_pengguna == device_pengguna) &&
            (identical(other.materi_id, materi_id) ||
                other.materi_id == materi_id) &&
            (identical(other.is_learn, is_learn) ||
                other.is_learn == is_learn) &&
            (identical(other.materi_detail, materi_detail) ||
                other.materi_detail == materi_detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, device_pengguna, materi_id, is_learn, materi_detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PenggunaImplCopyWith<_$PenggunaImpl> get copyWith =>
      __$$PenggunaImplCopyWithImpl<_$PenggunaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PenggunaImplToJson(
      this,
    );
  }
}

abstract class _Pengguna implements Pengguna {
  const factory _Pengguna(
      {final int? id,
      final String? device_pengguna,
      final int? materi_id,
      final int? is_learn,
      final Materi? materi_detail}) = _$PenggunaImpl;

  factory _Pengguna.fromJson(Map<String, dynamic> json) =
      _$PenggunaImpl.fromJson;

  @override
  int? get id;
  @override
  String? get device_pengguna;
  @override
  int? get materi_id;
  @override
  int? get is_learn;
  @override
  Materi? get materi_detail;
  @override
  @JsonKey(ignore: true)
  _$$PenggunaImplCopyWith<_$PenggunaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
