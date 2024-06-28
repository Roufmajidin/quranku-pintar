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
  List<String> get contoh_soal => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get jenisKuis => throw _privateConstructorUsedError;
  String? get judul => throw _privateConstructorUsedError;
  String? get kategori => throw _privateConstructorUsedError;
  String? get materi => throw _privateConstructorUsedError;

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
      {List<String> contoh_soal,
      int? id,
      String? jenisKuis,
      String? judul,
      String? kategori,
      String? materi});
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
    Object? contoh_soal = null,
    Object? id = freezed,
    Object? jenisKuis = freezed,
    Object? judul = freezed,
    Object? kategori = freezed,
    Object? materi = freezed,
  }) {
    return _then(_value.copyWith(
      contoh_soal: null == contoh_soal
          ? _value.contoh_soal
          : contoh_soal // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisKuis: freezed == jenisKuis
          ? _value.jenisKuis
          : jenisKuis // ignore: cast_nullable_to_non_nullable
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
      {List<String> contoh_soal,
      int? id,
      String? jenisKuis,
      String? judul,
      String? kategori,
      String? materi});
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
    Object? contoh_soal = null,
    Object? id = freezed,
    Object? jenisKuis = freezed,
    Object? judul = freezed,
    Object? kategori = freezed,
    Object? materi = freezed,
  }) {
    return _then(_$MateriImpl(
      contoh_soal: null == contoh_soal
          ? _value._contoh_soal
          : contoh_soal // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      jenisKuis: freezed == jenisKuis
          ? _value.jenisKuis
          : jenisKuis // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MateriImpl implements _Materi {
  const _$MateriImpl(
      {final List<String> contoh_soal = const [],
      this.id,
      this.jenisKuis,
      this.judul,
      this.kategori,
      this.materi})
      : _contoh_soal = contoh_soal;

  factory _$MateriImpl.fromJson(Map<String, dynamic> json) =>
      _$$MateriImplFromJson(json);

  final List<String> _contoh_soal;
  @override
  @JsonKey()
  List<String> get contoh_soal {
    if (_contoh_soal is EqualUnmodifiableListView) return _contoh_soal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contoh_soal);
  }

  @override
  final int? id;
  @override
  final String? jenisKuis;
  @override
  final String? judul;
  @override
  final String? kategori;
  @override
  final String? materi;

  @override
  String toString() {
    return 'Materi(contoh_soal: $contoh_soal, id: $id, jenisKuis: $jenisKuis, judul: $judul, kategori: $kategori, materi: $materi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MateriImpl &&
            const DeepCollectionEquality()
                .equals(other._contoh_soal, _contoh_soal) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jenisKuis, jenisKuis) ||
                other.jenisKuis == jenisKuis) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.materi, materi) || other.materi == materi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contoh_soal),
      id,
      jenisKuis,
      judul,
      kategori,
      materi);

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
      {final List<String> contoh_soal,
      final int? id,
      final String? jenisKuis,
      final String? judul,
      final String? kategori,
      final String? materi}) = _$MateriImpl;

  factory _Materi.fromJson(Map<String, dynamic> json) = _$MateriImpl.fromJson;

  @override
  List<String> get contoh_soal;
  @override
  int? get id;
  @override
  String? get jenisKuis;
  @override
  String? get judul;
  @override
  String? get kategori;
  @override
  String? get materi;
  @override
  @JsonKey(ignore: true)
  _$$MateriImplCopyWith<_$MateriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
