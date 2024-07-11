// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MainEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetDetailSuratImplCopyWith<$Res> {
  factory _$$GetDetailSuratImplCopyWith(_$GetDetailSuratImpl value,
          $Res Function(_$GetDetailSuratImpl) then) =
      __$$GetDetailSuratImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int surat});
}

/// @nodoc
class __$$GetDetailSuratImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetDetailSuratImpl>
    implements _$$GetDetailSuratImplCopyWith<$Res> {
  __$$GetDetailSuratImplCopyWithImpl(
      _$GetDetailSuratImpl _value, $Res Function(_$GetDetailSuratImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surat = null,
  }) {
    return _then(_$GetDetailSuratImpl(
      null == surat
          ? _value.surat
          : surat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailSuratImpl implements GetDetailSurat {
  const _$GetDetailSuratImpl(this.surat);

  @override
  final int surat;

  @override
  String toString() {
    return 'MainEvent.getSurat(surat: $surat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailSuratImpl &&
            (identical(other.surat, surat) || other.surat == surat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailSuratImplCopyWith<_$GetDetailSuratImpl> get copyWith =>
      __$$GetDetailSuratImplCopyWithImpl<_$GetDetailSuratImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return getSurat(surat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return getSurat?.call(surat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (getSurat != null) {
      return getSurat(surat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return getSurat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return getSurat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (getSurat != null) {
      return getSurat(this);
    }
    return orElse();
  }
}

abstract class GetDetailSurat implements MainEvent {
  const factory GetDetailSurat(final int surat) = _$GetDetailSuratImpl;

  int get surat;
  @JsonKey(ignore: true)
  _$$GetDetailSuratImplCopyWith<_$GetDetailSuratImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllSurahImplCopyWith<$Res> {
  factory _$$GetAllSurahImplCopyWith(
          _$GetAllSurahImpl value, $Res Function(_$GetAllSurahImpl) then) =
      __$$GetAllSurahImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllSurahImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetAllSurahImpl>
    implements _$$GetAllSurahImplCopyWith<$Res> {
  __$$GetAllSurahImplCopyWithImpl(
      _$GetAllSurahImpl _value, $Res Function(_$GetAllSurahImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllSurahImpl implements GetAllSurah {
  const _$GetAllSurahImpl();

  @override
  String toString() {
    return 'MainEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllSurahImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class GetAllSurah implements MainEvent {
  const factory GetAllSurah() = _$GetAllSurahImpl;
}

/// @nodoc
abstract class _$$GetMateriImplCopyWith<$Res> {
  factory _$$GetMateriImplCopyWith(
          _$GetMateriImpl value, $Res Function(_$GetMateriImpl) then) =
      __$$GetMateriImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMateriImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetMateriImpl>
    implements _$$GetMateriImplCopyWith<$Res> {
  __$$GetMateriImplCopyWithImpl(
      _$GetMateriImpl _value, $Res Function(_$GetMateriImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMateriImpl implements GetMateri {
  const _$GetMateriImpl();

  @override
  String toString() {
    return 'MainEvent.getMateri()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMateriImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return getMateri();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return getMateri?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (getMateri != null) {
      return getMateri();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return getMateri(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return getMateri?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (getMateri != null) {
      return getMateri(this);
    }
    return orElse();
  }
}

abstract class GetMateri implements MainEvent {
  const factory GetMateri() = _$GetMateriImpl;
}

/// @nodoc
abstract class _$$CheckPassedImplCopyWith<$Res> {
  factory _$$CheckPassedImplCopyWith(
          _$CheckPassedImpl value, $Res Function(_$CheckPassedImpl) then) =
      __$$CheckPassedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ayat});
}

/// @nodoc
class __$$CheckPassedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$CheckPassedImpl>
    implements _$$CheckPassedImplCopyWith<$Res> {
  __$$CheckPassedImplCopyWithImpl(
      _$CheckPassedImpl _value, $Res Function(_$CheckPassedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayat = null,
  }) {
    return _then(_$CheckPassedImpl(
      null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckPassedImpl implements CheckPassed {
  const _$CheckPassedImpl(this.ayat);

  @override
  final String ayat;

  @override
  String toString() {
    return 'MainEvent.checkPassed(ayat: $ayat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPassedImpl &&
            (identical(other.ayat, ayat) || other.ayat == ayat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPassedImplCopyWith<_$CheckPassedImpl> get copyWith =>
      __$$CheckPassedImplCopyWithImpl<_$CheckPassedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return checkPassed(ayat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return checkPassed?.call(ayat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (checkPassed != null) {
      return checkPassed(ayat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return checkPassed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return checkPassed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (checkPassed != null) {
      return checkPassed(this);
    }
    return orElse();
  }
}

abstract class CheckPassed implements MainEvent {
  const factory CheckPassed(final String ayat) = _$CheckPassedImpl;

  String get ayat;
  @JsonKey(ignore: true)
  _$$CheckPassedImplCopyWith<_$CheckPassedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckPassMateriImplCopyWith<$Res> {
  factory _$$CheckPassMateriImplCopyWith(_$CheckPassMateriImpl value,
          $Res Function(_$CheckPassMateriImpl) then) =
      __$$CheckPassMateriImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ayat, String acuan, int id});
}

/// @nodoc
class __$$CheckPassMateriImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$CheckPassMateriImpl>
    implements _$$CheckPassMateriImplCopyWith<$Res> {
  __$$CheckPassMateriImplCopyWithImpl(
      _$CheckPassMateriImpl _value, $Res Function(_$CheckPassMateriImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ayat = null,
    Object? acuan = null,
    Object? id = null,
  }) {
    return _then(_$CheckPassMateriImpl(
      ayat: null == ayat
          ? _value.ayat
          : ayat // ignore: cast_nullable_to_non_nullable
              as String,
      acuan: null == acuan
          ? _value.acuan
          : acuan // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckPassMateriImpl implements CheckPassMateri {
  const _$CheckPassMateriImpl(
      {required this.ayat, required this.acuan, required this.id});

  @override
  final String ayat;
  @override
  final String acuan;
  @override
  final int id;

  @override
  String toString() {
    return 'MainEvent.checkpassMateri(ayat: $ayat, acuan: $acuan, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckPassMateriImpl &&
            (identical(other.ayat, ayat) || other.ayat == ayat) &&
            (identical(other.acuan, acuan) || other.acuan == acuan) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ayat, acuan, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckPassMateriImplCopyWith<_$CheckPassMateriImpl> get copyWith =>
      __$$CheckPassMateriImplCopyWithImpl<_$CheckPassMateriImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return checkpassMateri(ayat, acuan, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return checkpassMateri?.call(ayat, acuan, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (checkpassMateri != null) {
      return checkpassMateri(ayat, acuan, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return checkpassMateri(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return checkpassMateri?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (checkpassMateri != null) {
      return checkpassMateri(this);
    }
    return orElse();
  }
}

abstract class CheckPassMateri implements MainEvent {
  const factory CheckPassMateri(
      {required final String ayat,
      required final String acuan,
      required final int id}) = _$CheckPassMateriImpl;

  String get ayat;
  String get acuan;
  int get id;
  @JsonKey(ignore: true)
  _$$CheckPassMateriImplCopyWith<_$CheckPassMateriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DevInfoImplCopyWith<$Res> {
  factory _$$DevInfoImplCopyWith(
          _$DevInfoImpl value, $Res Function(_$DevInfoImpl) then) =
      __$$DevInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deviceInfo});
}

/// @nodoc
class __$$DevInfoImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$DevInfoImpl>
    implements _$$DevInfoImplCopyWith<$Res> {
  __$$DevInfoImplCopyWithImpl(
      _$DevInfoImpl _value, $Res Function(_$DevInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
  }) {
    return _then(_$DevInfoImpl(
      null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DevInfoImpl implements DevInfo {
  const _$DevInfoImpl(this.deviceInfo);

  @override
  final String deviceInfo;

  @override
  String toString() {
    return 'MainEvent.deviceInfo(deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DevInfoImpl &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DevInfoImplCopyWith<_$DevInfoImpl> get copyWith =>
      __$$DevInfoImplCopyWithImpl<_$DevInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return deviceInfo(this.deviceInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return deviceInfo?.call(this.deviceInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (deviceInfo != null) {
      return deviceInfo(this.deviceInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return deviceInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return deviceInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (deviceInfo != null) {
      return deviceInfo(this);
    }
    return orElse();
  }
}

abstract class DevInfo implements MainEvent {
  const factory DevInfo(final String deviceInfo) = _$DevInfoImpl;

  String get deviceInfo;
  @JsonKey(ignore: true)
  _$$DevInfoImplCopyWith<_$DevInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostDeviceImplCopyWith<$Res> {
  factory _$$PostDeviceImplCopyWith(
          _$PostDeviceImpl value, $Res Function(_$PostDeviceImpl) then) =
      __$$PostDeviceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String deviceInfo});
}

/// @nodoc
class __$$PostDeviceImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$PostDeviceImpl>
    implements _$$PostDeviceImplCopyWith<$Res> {
  __$$PostDeviceImplCopyWithImpl(
      _$PostDeviceImpl _value, $Res Function(_$PostDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
  }) {
    return _then(_$PostDeviceImpl(
      null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostDeviceImpl implements PostDevice {
  const _$PostDeviceImpl(this.deviceInfo);

  @override
  final String deviceInfo;

  @override
  String toString() {
    return 'MainEvent.postDev(deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDeviceImpl &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deviceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDeviceImplCopyWith<_$PostDeviceImpl> get copyWith =>
      __$$PostDeviceImplCopyWithImpl<_$PostDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return postDev(this.deviceInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return postDev?.call(this.deviceInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (postDev != null) {
      return postDev(this.deviceInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return postDev(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return postDev?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (postDev != null) {
      return postDev(this);
    }
    return orElse();
  }
}

abstract class PostDevice implements MainEvent {
  const factory PostDevice(final String deviceInfo) = _$PostDeviceImpl;

  String get deviceInfo;
  @JsonKey(ignore: true)
  _$$PostDeviceImplCopyWith<_$PostDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingActiveImplCopyWith<$Res> {
  factory _$$LoadingActiveImplCopyWith(
          _$LoadingActiveImpl value, $Res Function(_$LoadingActiveImpl) then) =
      __$$LoadingActiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String loading});
}

/// @nodoc
class __$$LoadingActiveImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$LoadingActiveImpl>
    implements _$$LoadingActiveImplCopyWith<$Res> {
  __$$LoadingActiveImplCopyWithImpl(
      _$LoadingActiveImpl _value, $Res Function(_$LoadingActiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
  }) {
    return _then(_$LoadingActiveImpl(
      null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingActiveImpl implements LoadingActive {
  const _$LoadingActiveImpl(this.loading);

  @override
  final String loading;

  @override
  String toString() {
    return 'MainEvent.loadingActive(loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingActiveImpl &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingActiveImplCopyWith<_$LoadingActiveImpl> get copyWith =>
      __$$LoadingActiveImplCopyWithImpl<_$LoadingActiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return loadingActive(loading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return loadingActive?.call(loading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (loadingActive != null) {
      return loadingActive(loading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return loadingActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return loadingActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (loadingActive != null) {
      return loadingActive(this);
    }
    return orElse();
  }
}

abstract class LoadingActive implements MainEvent {
  const factory LoadingActive(final String loading) = _$LoadingActiveImpl;

  String get loading;
  @JsonKey(ignore: true)
  _$$LoadingActiveImplCopyWith<_$LoadingActiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetStatusImplCopyWith<$Res> {
  factory _$$GetStatusImplCopyWith(
          _$GetStatusImpl value, $Res Function(_$GetStatusImpl) then) =
      __$$GetStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetStatusImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetStatusImpl>
    implements _$$GetStatusImplCopyWith<$Res> {
  __$$GetStatusImplCopyWithImpl(
      _$GetStatusImpl _value, $Res Function(_$GetStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetStatusImpl implements GetStatus {
  const _$GetStatusImpl();

  @override
  String toString() {
    return 'MainEvent.getStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return getStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return getStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (getStatus != null) {
      return getStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return getStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return getStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (getStatus != null) {
      return getStatus(this);
    }
    return orElse();
  }
}

abstract class GetStatus implements MainEvent {
  const factory GetStatus() = _$GetStatusImpl;
}

/// @nodoc
abstract class _$$GetMateriPenggunaImplCopyWith<$Res> {
  factory _$$GetMateriPenggunaImplCopyWith(_$GetMateriPenggunaImpl value,
          $Res Function(_$GetMateriPenggunaImpl) then) =
      __$$GetMateriPenggunaImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String device});
}

/// @nodoc
class __$$GetMateriPenggunaImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$GetMateriPenggunaImpl>
    implements _$$GetMateriPenggunaImplCopyWith<$Res> {
  __$$GetMateriPenggunaImplCopyWithImpl(_$GetMateriPenggunaImpl _value,
      $Res Function(_$GetMateriPenggunaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$GetMateriPenggunaImpl(
      null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMateriPenggunaImpl implements GetMateriPengguna {
  const _$GetMateriPenggunaImpl(this.device);

  @override
  final String device;

  @override
  String toString() {
    return 'MainEvent.getMateriPengguna(device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMateriPenggunaImpl &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMateriPenggunaImplCopyWith<_$GetMateriPenggunaImpl> get copyWith =>
      __$$GetMateriPenggunaImplCopyWithImpl<_$GetMateriPenggunaImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return getMateriPengguna(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return getMateriPengguna?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (getMateriPengguna != null) {
      return getMateriPengguna(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return getMateriPengguna(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return getMateriPengguna?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (getMateriPengguna != null) {
      return getMateriPengguna(this);
    }
    return orElse();
  }
}

abstract class GetMateriPengguna implements MainEvent {
  const factory GetMateriPengguna(final String device) =
      _$GetMateriPenggunaImpl;

  String get device;
  @JsonKey(ignore: true)
  _$$GetMateriPenggunaImplCopyWith<_$GetMateriPenggunaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostLearnImplCopyWith<$Res> {
  factory _$$PostLearnImplCopyWith(
          _$PostLearnImpl value, $Res Function(_$PostLearnImpl) then) =
      __$$PostLearnImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, int nilai});
}

/// @nodoc
class __$$PostLearnImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$PostLearnImpl>
    implements _$$PostLearnImplCopyWith<$Res> {
  __$$PostLearnImplCopyWithImpl(
      _$PostLearnImpl _value, $Res Function(_$PostLearnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nilai = null,
  }) {
    return _then(_$PostLearnImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nilai: null == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PostLearnImpl implements PostLearn {
  const _$PostLearnImpl({required this.id, required this.nilai});

  @override
  final int id;
  @override
  final int nilai;

  @override
  String toString() {
    return 'MainEvent.postLearn(id: $id, nilai: $nilai)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLearnImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nilai, nilai) || other.nilai == nilai));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nilai);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostLearnImplCopyWith<_$PostLearnImpl> get copyWith =>
      __$$PostLearnImplCopyWithImpl<_$PostLearnImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int surat) getSurat,
    required TResult Function() getAll,
    required TResult Function() getMateri,
    required TResult Function(String ayat) checkPassed,
    required TResult Function(String ayat, String acuan, int id)
        checkpassMateri,
    required TResult Function(String deviceInfo) deviceInfo,
    required TResult Function(String deviceInfo) postDev,
    required TResult Function(String loading) loadingActive,
    required TResult Function() getStatus,
    required TResult Function(String device) getMateriPengguna,
    required TResult Function(int id, int nilai) postLearn,
  }) {
    return postLearn(id, nilai);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult? Function(String deviceInfo)? deviceInfo,
    TResult? Function(String deviceInfo)? postDev,
    TResult? Function(String loading)? loadingActive,
    TResult? Function()? getStatus,
    TResult? Function(String device)? getMateriPengguna,
    TResult? Function(int id, int nilai)? postLearn,
  }) {
    return postLearn?.call(id, nilai);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String ayat, String acuan, int id)? checkpassMateri,
    TResult Function(String deviceInfo)? deviceInfo,
    TResult Function(String deviceInfo)? postDev,
    TResult Function(String loading)? loadingActive,
    TResult Function()? getStatus,
    TResult Function(String device)? getMateriPengguna,
    TResult Function(int id, int nilai)? postLearn,
    required TResult orElse(),
  }) {
    if (postLearn != null) {
      return postLearn(id, nilai);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(GetDetailSurat value) getSurat,
    required TResult Function(GetAllSurah value) getAll,
    required TResult Function(GetMateri value) getMateri,
    required TResult Function(CheckPassed value) checkPassed,
    required TResult Function(CheckPassMateri value) checkpassMateri,
    required TResult Function(DevInfo value) deviceInfo,
    required TResult Function(PostDevice value) postDev,
    required TResult Function(LoadingActive value) loadingActive,
    required TResult Function(GetStatus value) getStatus,
    required TResult Function(GetMateriPengguna value) getMateriPengguna,
    required TResult Function(PostLearn value) postLearn,
  }) {
    return postLearn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(CheckPassMateri value)? checkpassMateri,
    TResult? Function(DevInfo value)? deviceInfo,
    TResult? Function(PostDevice value)? postDev,
    TResult? Function(LoadingActive value)? loadingActive,
    TResult? Function(GetStatus value)? getStatus,
    TResult? Function(GetMateriPengguna value)? getMateriPengguna,
    TResult? Function(PostLearn value)? postLearn,
  }) {
    return postLearn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(CheckPassMateri value)? checkpassMateri,
    TResult Function(DevInfo value)? deviceInfo,
    TResult Function(PostDevice value)? postDev,
    TResult Function(LoadingActive value)? loadingActive,
    TResult Function(GetStatus value)? getStatus,
    TResult Function(GetMateriPengguna value)? getMateriPengguna,
    TResult Function(PostLearn value)? postLearn,
    required TResult orElse(),
  }) {
    if (postLearn != null) {
      return postLearn(this);
    }
    return orElse();
  }
}

abstract class PostLearn implements MainEvent {
  const factory PostLearn({required final int id, required final int nilai}) =
      _$PostLearnImpl;

  int get id;
  int get nilai;
  @JsonKey(ignore: true)
  _$$PostLearnImplCopyWith<_$PostLearnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  dynamic get quranData => throw _privateConstructorUsedError;
  List<QuranData> get quran => throw _privateConstructorUsedError;
  List<Surat> get surat => throw _privateConstructorUsedError;
  List<Materi> get materi => throw _privateConstructorUsedError;
  FetchStatus get fetchDataProses => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  int get ayatIndex => throw _privateConstructorUsedError;
  String get ayatAcuan => throw _privateConstructorUsedError;
  String get deviceInfo => throw _privateConstructorUsedError;
  bool get isPassed => throw _privateConstructorUsedError;
  String get isLoading => throw _privateConstructorUsedError;
  dynamic get groupedMateri => throw _privateConstructorUsedError;
  List<String> get koreksian => throw _privateConstructorUsedError;
  Map<String, Map<String, List<Materi>>> get statusData =>
      throw _privateConstructorUsedError;
  List<Pengguna> get pengguna => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic quranData,
            List<QuranData> quran,
            List<Surat> surat,
            List<Materi> materi,
            FetchStatus fetchDataProses,
            int index,
            int ayatIndex,
            String ayatAcuan,
            String deviceInfo,
            bool isPassed,
            String isLoading,
            dynamic groupedMateri,
            List<String> koreksian,
            Map<String, Map<String, List<Materi>>> statusData,
            List<Pengguna> pengguna)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic quranData,
            List<QuranData> quran,
            List<Surat> surat,
            List<Materi> materi,
            FetchStatus fetchDataProses,
            int index,
            int ayatIndex,
            String ayatAcuan,
            String deviceInfo,
            bool isPassed,
            String isLoading,
            dynamic groupedMateri,
            List<String> koreksian,
            Map<String, Map<String, List<Materi>>> statusData,
            List<Pengguna> pengguna)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic quranData,
            List<QuranData> quran,
            List<Surat> surat,
            List<Materi> materi,
            FetchStatus fetchDataProses,
            int index,
            int ayatIndex,
            String ayatAcuan,
            String deviceInfo,
            bool isPassed,
            String isLoading,
            dynamic groupedMateri,
            List<String> koreksian,
            Map<String, Map<String, List<Materi>>> statusData,
            List<Pengguna> pengguna)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {dynamic quranData,
      List<QuranData> quran,
      List<Surat> surat,
      List<Materi> materi,
      FetchStatus fetchDataProses,
      int index,
      int ayatIndex,
      String ayatAcuan,
      String deviceInfo,
      bool isPassed,
      String isLoading,
      dynamic groupedMateri,
      List<String> koreksian,
      Map<String, Map<String, List<Materi>>> statusData,
      List<Pengguna> pengguna});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quranData = freezed,
    Object? quran = null,
    Object? surat = null,
    Object? materi = null,
    Object? fetchDataProses = null,
    Object? index = null,
    Object? ayatIndex = null,
    Object? ayatAcuan = null,
    Object? deviceInfo = null,
    Object? isPassed = null,
    Object? isLoading = null,
    Object? groupedMateri = freezed,
    Object? koreksian = null,
    Object? statusData = null,
    Object? pengguna = null,
  }) {
    return _then(_value.copyWith(
      quranData: freezed == quranData
          ? _value.quranData
          : quranData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quran: null == quran
          ? _value.quran
          : quran // ignore: cast_nullable_to_non_nullable
              as List<QuranData>,
      surat: null == surat
          ? _value.surat
          : surat // ignore: cast_nullable_to_non_nullable
              as List<Surat>,
      materi: null == materi
          ? _value.materi
          : materi // ignore: cast_nullable_to_non_nullable
              as List<Materi>,
      fetchDataProses: null == fetchDataProses
          ? _value.fetchDataProses
          : fetchDataProses // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      ayatIndex: null == ayatIndex
          ? _value.ayatIndex
          : ayatIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ayatAcuan: null == ayatAcuan
          ? _value.ayatAcuan
          : ayatAcuan // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as String,
      groupedMateri: freezed == groupedMateri
          ? _value.groupedMateri
          : groupedMateri // ignore: cast_nullable_to_non_nullable
              as dynamic,
      koreksian: null == koreksian
          ? _value.koreksian
          : koreksian // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusData: null == statusData
          ? _value.statusData
          : statusData // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, List<Materi>>>,
      pengguna: null == pengguna
          ? _value.pengguna
          : pengguna // ignore: cast_nullable_to_non_nullable
              as List<Pengguna>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic quranData,
      List<QuranData> quran,
      List<Surat> surat,
      List<Materi> materi,
      FetchStatus fetchDataProses,
      int index,
      int ayatIndex,
      String ayatAcuan,
      String deviceInfo,
      bool isPassed,
      String isLoading,
      dynamic groupedMateri,
      List<String> koreksian,
      Map<String, Map<String, List<Materi>>> statusData,
      List<Pengguna> pengguna});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quranData = freezed,
    Object? quran = null,
    Object? surat = null,
    Object? materi = null,
    Object? fetchDataProses = null,
    Object? index = null,
    Object? ayatIndex = null,
    Object? ayatAcuan = null,
    Object? deviceInfo = null,
    Object? isPassed = null,
    Object? isLoading = null,
    Object? groupedMateri = freezed,
    Object? koreksian = null,
    Object? statusData = null,
    Object? pengguna = null,
  }) {
    return _then(_$InitialImpl(
      quranData: freezed == quranData ? _value.quranData! : quranData,
      quran: null == quran
          ? _value._quran
          : quran // ignore: cast_nullable_to_non_nullable
              as List<QuranData>,
      surat: null == surat
          ? _value._surat
          : surat // ignore: cast_nullable_to_non_nullable
              as List<Surat>,
      materi: null == materi
          ? _value._materi
          : materi // ignore: cast_nullable_to_non_nullable
              as List<Materi>,
      fetchDataProses: null == fetchDataProses
          ? _value.fetchDataProses
          : fetchDataProses // ignore: cast_nullable_to_non_nullable
              as FetchStatus,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      ayatIndex: null == ayatIndex
          ? _value.ayatIndex
          : ayatIndex // ignore: cast_nullable_to_non_nullable
              as int,
      ayatAcuan: null == ayatAcuan
          ? _value.ayatAcuan
          : ayatAcuan // ignore: cast_nullable_to_non_nullable
              as String,
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      isPassed: null == isPassed
          ? _value.isPassed
          : isPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as String,
      groupedMateri:
          freezed == groupedMateri ? _value.groupedMateri! : groupedMateri,
      koreksian: null == koreksian
          ? _value._koreksian
          : koreksian // ignore: cast_nullable_to_non_nullable
              as List<String>,
      statusData: null == statusData
          ? _value._statusData
          : statusData // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, List<Materi>>>,
      pengguna: null == pengguna
          ? _value._pengguna
          : pengguna // ignore: cast_nullable_to_non_nullable
              as List<Pengguna>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.quranData = QuranModels,
      final List<QuranData> quran = const <QuranData>[],
      final List<Surat> surat = const <Surat>[],
      final List<Materi> materi = const <Materi>[],
      this.fetchDataProses = FetchStatus.initial,
      this.index = 0,
      this.ayatIndex = 0,
      this.ayatAcuan = '',
      this.deviceInfo = '',
      this.isPassed = false,
      this.isLoading = '',
      this.groupedMateri = const [],
      final List<String> koreksian = const [],
      final Map<String, Map<String, List<Materi>>> statusData = const {},
      final List<Pengguna> pengguna = const <Pengguna>[]})
      : _quran = quran,
        _surat = surat,
        _materi = materi,
        _koreksian = koreksian,
        _statusData = statusData,
        _pengguna = pengguna;

  @override
  @JsonKey()
  final dynamic quranData;
  final List<QuranData> _quran;
  @override
  @JsonKey()
  List<QuranData> get quran {
    if (_quran is EqualUnmodifiableListView) return _quran;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quran);
  }

  final List<Surat> _surat;
  @override
  @JsonKey()
  List<Surat> get surat {
    if (_surat is EqualUnmodifiableListView) return _surat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surat);
  }

  final List<Materi> _materi;
  @override
  @JsonKey()
  List<Materi> get materi {
    if (_materi is EqualUnmodifiableListView) return _materi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_materi);
  }

  @override
  @JsonKey()
  final FetchStatus fetchDataProses;
  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final int ayatIndex;
  @override
  @JsonKey()
  final String ayatAcuan;
  @override
  @JsonKey()
  final String deviceInfo;
  @override
  @JsonKey()
  final bool isPassed;
  @override
  @JsonKey()
  final String isLoading;
  @override
  @JsonKey()
  final dynamic groupedMateri;
  final List<String> _koreksian;
  @override
  @JsonKey()
  List<String> get koreksian {
    if (_koreksian is EqualUnmodifiableListView) return _koreksian;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_koreksian);
  }

  final Map<String, Map<String, List<Materi>>> _statusData;
  @override
  @JsonKey()
  Map<String, Map<String, List<Materi>>> get statusData {
    if (_statusData is EqualUnmodifiableMapView) return _statusData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statusData);
  }

  final List<Pengguna> _pengguna;
  @override
  @JsonKey()
  List<Pengguna> get pengguna {
    if (_pengguna is EqualUnmodifiableListView) return _pengguna;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pengguna);
  }

  @override
  String toString() {
    return 'MainState.initial(quranData: $quranData, quran: $quran, surat: $surat, materi: $materi, fetchDataProses: $fetchDataProses, index: $index, ayatIndex: $ayatIndex, ayatAcuan: $ayatAcuan, deviceInfo: $deviceInfo, isPassed: $isPassed, isLoading: $isLoading, groupedMateri: $groupedMateri, koreksian: $koreksian, statusData: $statusData, pengguna: $pengguna)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other.quranData, quranData) &&
            const DeepCollectionEquality().equals(other._quran, _quran) &&
            const DeepCollectionEquality().equals(other._surat, _surat) &&
            const DeepCollectionEquality().equals(other._materi, _materi) &&
            (identical(other.fetchDataProses, fetchDataProses) ||
                other.fetchDataProses == fetchDataProses) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.ayatIndex, ayatIndex) ||
                other.ayatIndex == ayatIndex) &&
            (identical(other.ayatAcuan, ayatAcuan) ||
                other.ayatAcuan == ayatAcuan) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other.groupedMateri, groupedMateri) &&
            const DeepCollectionEquality()
                .equals(other._koreksian, _koreksian) &&
            const DeepCollectionEquality()
                .equals(other._statusData, _statusData) &&
            const DeepCollectionEquality().equals(other._pengguna, _pengguna));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quranData),
      const DeepCollectionEquality().hash(_quran),
      const DeepCollectionEquality().hash(_surat),
      const DeepCollectionEquality().hash(_materi),
      fetchDataProses,
      index,
      ayatIndex,
      ayatAcuan,
      deviceInfo,
      isPassed,
      isLoading,
      const DeepCollectionEquality().hash(groupedMateri),
      const DeepCollectionEquality().hash(_koreksian),
      const DeepCollectionEquality().hash(_statusData),
      const DeepCollectionEquality().hash(_pengguna));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic quranData,
            List<QuranData> quran,
            List<Surat> surat,
            List<Materi> materi,
            FetchStatus fetchDataProses,
            int index,
            int ayatIndex,
            String ayatAcuan,
            String deviceInfo,
            bool isPassed,
            String isLoading,
            dynamic groupedMateri,
            List<String> koreksian,
            Map<String, Map<String, List<Materi>>> statusData,
            List<Pengguna> pengguna)
        initial,
  }) {
    return initial(
        quranData,
        quran,
        surat,
        materi,
        fetchDataProses,
        index,
        ayatIndex,
        ayatAcuan,
        deviceInfo,
        isPassed,
        isLoading,
        groupedMateri,
        koreksian,
        statusData,
        pengguna);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            dynamic quranData,
            List<QuranData> quran,
            List<Surat> surat,
            List<Materi> materi,
            FetchStatus fetchDataProses,
            int index,
            int ayatIndex,
            String ayatAcuan,
            String deviceInfo,
            bool isPassed,
            String isLoading,
            dynamic groupedMateri,
            List<String> koreksian,
            Map<String, Map<String, List<Materi>>> statusData,
            List<Pengguna> pengguna)?
        initial,
  }) {
    return initial?.call(
        quranData,
        quran,
        surat,
        materi,
        fetchDataProses,
        index,
        ayatIndex,
        ayatAcuan,
        deviceInfo,
        isPassed,
        isLoading,
        groupedMateri,
        koreksian,
        statusData,
        pengguna);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            dynamic quranData,
            List<QuranData> quran,
            List<Surat> surat,
            List<Materi> materi,
            FetchStatus fetchDataProses,
            int index,
            int ayatIndex,
            String ayatAcuan,
            String deviceInfo,
            bool isPassed,
            String isLoading,
            dynamic groupedMateri,
            List<String> koreksian,
            Map<String, Map<String, List<Materi>>> statusData,
            List<Pengguna> pengguna)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          quranData,
          quran,
          surat,
          materi,
          fetchDataProses,
          index,
          ayatIndex,
          ayatAcuan,
          deviceInfo,
          isPassed,
          isLoading,
          groupedMateri,
          koreksian,
          statusData,
          pengguna);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial(
      {final dynamic quranData,
      final List<QuranData> quran,
      final List<Surat> surat,
      final List<Materi> materi,
      final FetchStatus fetchDataProses,
      final int index,
      final int ayatIndex,
      final String ayatAcuan,
      final String deviceInfo,
      final bool isPassed,
      final String isLoading,
      final dynamic groupedMateri,
      final List<String> koreksian,
      final Map<String, Map<String, List<Materi>>> statusData,
      final List<Pengguna> pengguna}) = _$InitialImpl;

  @override
  dynamic get quranData;
  @override
  List<QuranData> get quran;
  @override
  List<Surat> get surat;
  @override
  List<Materi> get materi;
  @override
  FetchStatus get fetchDataProses;
  @override
  int get index;
  @override
  int get ayatIndex;
  @override
  String get ayatAcuan;
  @override
  String get deviceInfo;
  @override
  bool get isPassed;
  @override
  String get isLoading;
  @override
  dynamic get groupedMateri;
  @override
  List<String> get koreksian;
  @override
  Map<String, Map<String, List<Materi>>> get statusData;
  @override
  List<Pengguna> get pengguna;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
