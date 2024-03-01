// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String message) serverFailure,
    required TResult Function(String message) googleFailure,
    required TResult Function(String message) parsingFailure,
    required TResult Function(String message) connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String message)? serverFailure,
    TResult? Function(String message)? googleFailure,
    TResult? Function(String message)? parsingFailure,
    TResult? Function(String message)? connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? serverFailure,
    TResult Function(String message)? googleFailure,
    TResult Function(String message)? parsingFailure,
    TResult Function(String message)? connectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(GoogleFailure value) googleFailure,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(GoogleFailure value)? googleFailure,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(GoogleFailure value)? googleFailure,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<Failure> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, String message});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = null,
  }) {
    return _then(_$ServerFailureImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements ServerFailure {
  const _$ServerFailureImpl(
      {this.statusCode, this.message = 'Terjadi kesalahan'});

  @override
  final int? statusCode;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.serverFailure(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String message) serverFailure,
    required TResult Function(String message) googleFailure,
    required TResult Function(String message) parsingFailure,
    required TResult Function(String message) connectionFailure,
  }) {
    return serverFailure(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String message)? serverFailure,
    TResult? Function(String message)? googleFailure,
    TResult? Function(String message)? parsingFailure,
    TResult? Function(String message)? connectionFailure,
  }) {
    return serverFailure?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? serverFailure,
    TResult Function(String message)? googleFailure,
    TResult Function(String message)? parsingFailure,
    TResult Function(String message)? connectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(GoogleFailure value) googleFailure,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(GoogleFailure value)? googleFailure,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(GoogleFailure value)? googleFailure,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure implements Failure {
  const factory ServerFailure({final int? statusCode, final String message}) =
      _$ServerFailureImpl;

  int? get statusCode;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$GoogleFailureImplCopyWith(
          _$GoogleFailureImpl value, $Res Function(_$GoogleFailureImpl) then) =
      __$$GoogleFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GoogleFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$GoogleFailureImpl>
    implements _$$GoogleFailureImplCopyWith<$Res> {
  __$$GoogleFailureImplCopyWithImpl(
      _$GoogleFailureImpl _value, $Res Function(_$GoogleFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GoogleFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoogleFailureImpl implements GoogleFailure {
  const _$GoogleFailureImpl(
      {this.message = 'Terjadi kesalahan pada otentikasi Google'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.googleFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleFailureImplCopyWith<_$GoogleFailureImpl> get copyWith =>
      __$$GoogleFailureImplCopyWithImpl<_$GoogleFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String message) serverFailure,
    required TResult Function(String message) googleFailure,
    required TResult Function(String message) parsingFailure,
    required TResult Function(String message) connectionFailure,
  }) {
    return googleFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String message)? serverFailure,
    TResult? Function(String message)? googleFailure,
    TResult? Function(String message)? parsingFailure,
    TResult? Function(String message)? connectionFailure,
  }) {
    return googleFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? serverFailure,
    TResult Function(String message)? googleFailure,
    TResult Function(String message)? parsingFailure,
    TResult Function(String message)? connectionFailure,
    required TResult orElse(),
  }) {
    if (googleFailure != null) {
      return googleFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(GoogleFailure value) googleFailure,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
  }) {
    return googleFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(GoogleFailure value)? googleFailure,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
  }) {
    return googleFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(GoogleFailure value)? googleFailure,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) {
    if (googleFailure != null) {
      return googleFailure(this);
    }
    return orElse();
  }
}

abstract class GoogleFailure implements Failure {
  const factory GoogleFailure({final String message}) = _$GoogleFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$GoogleFailureImplCopyWith<_$GoogleFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ParsingFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ParsingFailureImplCopyWith(_$ParsingFailureImpl value,
          $Res Function(_$ParsingFailureImpl) then) =
      __$$ParsingFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ParsingFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ParsingFailureImpl>
    implements _$$ParsingFailureImplCopyWith<$Res> {
  __$$ParsingFailureImplCopyWithImpl(
      _$ParsingFailureImpl _value, $Res Function(_$ParsingFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ParsingFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ParsingFailureImpl implements ParsingFailure {
  const _$ParsingFailureImpl({this.message = 'Gagal memparsing respon'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.parsingFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsingFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsingFailureImplCopyWith<_$ParsingFailureImpl> get copyWith =>
      __$$ParsingFailureImplCopyWithImpl<_$ParsingFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String message) serverFailure,
    required TResult Function(String message) googleFailure,
    required TResult Function(String message) parsingFailure,
    required TResult Function(String message) connectionFailure,
  }) {
    return parsingFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String message)? serverFailure,
    TResult? Function(String message)? googleFailure,
    TResult? Function(String message)? parsingFailure,
    TResult? Function(String message)? connectionFailure,
  }) {
    return parsingFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? serverFailure,
    TResult Function(String message)? googleFailure,
    TResult Function(String message)? parsingFailure,
    TResult Function(String message)? connectionFailure,
    required TResult orElse(),
  }) {
    if (parsingFailure != null) {
      return parsingFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(GoogleFailure value) googleFailure,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
  }) {
    return parsingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(GoogleFailure value)? googleFailure,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
  }) {
    return parsingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(GoogleFailure value)? googleFailure,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) {
    if (parsingFailure != null) {
      return parsingFailure(this);
    }
    return orElse();
  }
}

abstract class ParsingFailure implements Failure {
  const factory ParsingFailure({final String message}) = _$ParsingFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ParsingFailureImplCopyWith<_$ParsingFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConnectionFailureImplCopyWith<$Res>
    implements $FailureCopyWith<$Res> {
  factory _$$ConnectionFailureImplCopyWith(_$ConnectionFailureImpl value,
          $Res Function(_$ConnectionFailureImpl) then) =
      __$$ConnectionFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ConnectionFailureImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionFailureImpl>
    implements _$$ConnectionFailureImplCopyWith<$Res> {
  __$$ConnectionFailureImplCopyWithImpl(_$ConnectionFailureImpl _value,
      $Res Function(_$ConnectionFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ConnectionFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConnectionFailureImpl implements ConnectionFailure {
  const _$ConnectionFailureImpl({this.message = 'Tidak ada koneksi internet'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Failure.connectionFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      __$$ConnectionFailureImplCopyWithImpl<_$ConnectionFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? statusCode, String message) serverFailure,
    required TResult Function(String message) googleFailure,
    required TResult Function(String message) parsingFailure,
    required TResult Function(String message) connectionFailure,
  }) {
    return connectionFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? statusCode, String message)? serverFailure,
    TResult? Function(String message)? googleFailure,
    TResult? Function(String message)? parsingFailure,
    TResult? Function(String message)? connectionFailure,
  }) {
    return connectionFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? statusCode, String message)? serverFailure,
    TResult Function(String message)? googleFailure,
    TResult Function(String message)? parsingFailure,
    TResult Function(String message)? connectionFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure value) serverFailure,
    required TResult Function(GoogleFailure value) googleFailure,
    required TResult Function(ParsingFailure value) parsingFailure,
    required TResult Function(ConnectionFailure value) connectionFailure,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure value)? serverFailure,
    TResult? Function(GoogleFailure value)? googleFailure,
    TResult? Function(ParsingFailure value)? parsingFailure,
    TResult? Function(ConnectionFailure value)? connectionFailure,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure value)? serverFailure,
    TResult Function(GoogleFailure value)? googleFailure,
    TResult Function(ParsingFailure value)? parsingFailure,
    TResult Function(ConnectionFailure value)? connectionFailure,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements Failure {
  const factory ConnectionFailure({final String message}) =
      _$ConnectionFailureImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionFailureImplCopyWith<_$ConnectionFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
