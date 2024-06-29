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
    required TResult Function(String loading) loadingActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int surat)? getSurat,
    TResult? Function()? getAll,
    TResult? Function()? getMateri,
    TResult? Function(String ayat)? checkPassed,
    TResult? Function(String loading)? loadingActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int surat)? getSurat,
    TResult Function()? getAll,
    TResult Function()? getMateri,
    TResult Function(String ayat)? checkPassed,
    TResult Function(String loading)? loadingActive,
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
    required TResult Function(LoadingActive value) loadingActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(GetDetailSurat value)? getSurat,
    TResult? Function(GetAllSurah value)? getAll,
    TResult? Function(GetMateri value)? getMateri,
    TResult? Function(CheckPassed value)? checkPassed,
    TResult? Function(LoadingActive value)? loadingActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(GetDetailSurat value)? getSurat,
    TResult Function(GetAllSurah value)? getAll,
    TResult Function(GetMateri value)? getMateri,
    TResult Function(CheckPassed value)? checkPassed,
    TResult Function(LoadingActive value)? loadingActive,
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
    required TResult Function(String loading) loadingActive,
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
    TResult? Function(String loading)? loadingActive,
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
    TResult Function(String loading)? loadingActive,
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
    required TResult Function(LoadingActive value) loadingActive,
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
    TResult? Function(LoadingActive value)? loadingActive,
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
    TResult Function(LoadingActive value)? loadingActive,
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
    required TResult Function(String loading) loadingActive,
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
    TResult? Function(String loading)? loadingActive,
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
    TResult Function(String loading)? loadingActive,
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
    required TResult Function(LoadingActive value) loadingActive,
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
    TResult? Function(LoadingActive value)? loadingActive,
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
    TResult Function(LoadingActive value)? loadingActive,
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
    required TResult Function(String loading) loadingActive,
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
    TResult? Function(String loading)? loadingActive,
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
    TResult Function(String loading)? loadingActive,
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
    required TResult Function(LoadingActive value) loadingActive,
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
    TResult? Function(LoadingActive value)? loadingActive,
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
    TResult Function(LoadingActive value)? loadingActive,
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
    required TResult Function(String loading) loadingActive,
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
    TResult? Function(String loading)? loadingActive,
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
    TResult Function(String loading)? loadingActive,
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
    required TResult Function(LoadingActive value) loadingActive,
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
    TResult? Function(LoadingActive value)? loadingActive,
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
    TResult Function(LoadingActive value)? loadingActive,
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
    required TResult Function(String loading) loadingActive,
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
    TResult? Function(String loading)? loadingActive,
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
    TResult Function(String loading)? loadingActive,
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
    required TResult Function(LoadingActive value) loadingActive,
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
    TResult? Function(LoadingActive value)? loadingActive,
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
    TResult Function(LoadingActive value)? loadingActive,
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
    required TResult Function(String loading) loadingActive,
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
    TResult? Function(String loading)? loadingActive,
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
    TResult Function(String loading)? loadingActive,
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
    required TResult Function(LoadingActive value) loadingActive,
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
    TResult? Function(LoadingActive value)? loadingActive,
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
    TResult Function(LoadingActive value)? loadingActive,
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
mixin _$MainState {
  dynamic get quranData => throw _privateConstructorUsedError;
  List<QuranData> get quran => throw _privateConstructorUsedError;
  List<Surat> get surat => throw _privateConstructorUsedError;
  List<Materi> get materi => throw _privateConstructorUsedError;
  FetchStatus get fetchDataProses => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isPassed => throw _privateConstructorUsedError;
  String get isLoading => throw _privateConstructorUsedError;
  dynamic get groupedMateri => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            dynamic quranData,
            List<QuranData> quran,
            List<Surat> surat,
            List<Materi> materi,
            FetchStatus fetchDataProses,
            int index,
            bool isPassed,
            String isLoading,
            dynamic groupedMateri)
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
            bool isPassed,
            String isLoading,
            dynamic groupedMateri)?
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
            bool isPassed,
            String isLoading,
            dynamic groupedMateri)?
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
      bool isPassed,
      String isLoading,
      dynamic groupedMateri});
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
    Object? isPassed = null,
    Object? isLoading = null,
    Object? groupedMateri = freezed,
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
      bool isPassed,
      String isLoading,
      dynamic groupedMateri});
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
    Object? isPassed = null,
    Object? isLoading = null,
    Object? groupedMateri = freezed,
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
      this.isPassed = false,
      this.isLoading = '',
      this.groupedMateri = const []})
      : _quran = quran,
        _surat = surat,
        _materi = materi;

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
  final bool isPassed;
  @override
  @JsonKey()
  final String isLoading;
  @override
  @JsonKey()
  final dynamic groupedMateri;

  @override
  String toString() {
    return 'MainState.initial(quranData: $quranData, quran: $quran, surat: $surat, materi: $materi, fetchDataProses: $fetchDataProses, index: $index, isPassed: $isPassed, isLoading: $isLoading, groupedMateri: $groupedMateri)';
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
            (identical(other.isPassed, isPassed) ||
                other.isPassed == isPassed) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other.groupedMateri, groupedMateri));
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
      isPassed,
      isLoading,
      const DeepCollectionEquality().hash(groupedMateri));

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
            bool isPassed,
            String isLoading,
            dynamic groupedMateri)
        initial,
  }) {
    return initial(quranData, quran, surat, materi, fetchDataProses, index,
        isPassed, isLoading, groupedMateri);
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
            bool isPassed,
            String isLoading,
            dynamic groupedMateri)?
        initial,
  }) {
    return initial?.call(quranData, quran, surat, materi, fetchDataProses,
        index, isPassed, isLoading, groupedMateri);
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
            bool isPassed,
            String isLoading,
            dynamic groupedMateri)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(quranData, quran, surat, materi, fetchDataProses, index,
          isPassed, isLoading, groupedMateri);
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
      final bool isPassed,
      final String isLoading,
      final dynamic groupedMateri}) = _$InitialImpl;

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
  bool get isPassed;
  @override
  String get isLoading;
  @override
  dynamic get groupedMateri;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
