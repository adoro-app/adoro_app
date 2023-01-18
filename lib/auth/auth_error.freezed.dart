// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) userNotRegistered,
    required TResult Function(String message) alreadyRegistered,
    required TResult Function(String message) wrongOTP,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? userNotRegistered,
    TResult? Function(String message)? alreadyRegistered,
    TResult? Function(String message)? wrongOTP,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? userNotRegistered,
    TResult Function(String message)? alreadyRegistered,
    TResult Function(String message)? wrongOTP,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_UserAlreadyRegistered value) alreadyRegistered,
    required TResult Function(_WrongOTP value) wrongOTP,
    required TResult Function(_Unknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult? Function(_WrongOTP value)? wrongOTP,
    TResult? Function(_Unknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult Function(_WrongOTP value)? wrongOTP,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthErrorCopyWith<AuthError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthErrorCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) then) =
      _$AuthErrorCopyWithImpl<$Res, AuthError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthErrorCopyWithImpl<$Res, $Val extends AuthError>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserNotRegisteredCopyWith<$Res>
    implements $AuthErrorCopyWith<$Res> {
  factory _$$_UserNotRegisteredCopyWith(_$_UserNotRegistered value,
          $Res Function(_$_UserNotRegistered) then) =
      __$$_UserNotRegisteredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserNotRegisteredCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res, _$_UserNotRegistered>
    implements _$$_UserNotRegisteredCopyWith<$Res> {
  __$$_UserNotRegisteredCopyWithImpl(
      _$_UserNotRegistered _value, $Res Function(_$_UserNotRegistered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserNotRegistered(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNotRegistered extends _UserNotRegistered {
  const _$_UserNotRegistered({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthError.userNotRegistered(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNotRegistered &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserNotRegisteredCopyWith<_$_UserNotRegistered> get copyWith =>
      __$$_UserNotRegisteredCopyWithImpl<_$_UserNotRegistered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) userNotRegistered,
    required TResult Function(String message) alreadyRegistered,
    required TResult Function(String message) wrongOTP,
    required TResult Function(String message) unknown,
  }) {
    return userNotRegistered(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? userNotRegistered,
    TResult? Function(String message)? alreadyRegistered,
    TResult? Function(String message)? wrongOTP,
    TResult? Function(String message)? unknown,
  }) {
    return userNotRegistered?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? userNotRegistered,
    TResult Function(String message)? alreadyRegistered,
    TResult Function(String message)? wrongOTP,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (userNotRegistered != null) {
      return userNotRegistered(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_UserAlreadyRegistered value) alreadyRegistered,
    required TResult Function(_WrongOTP value) wrongOTP,
    required TResult Function(_Unknown value) unknown,
  }) {
    return userNotRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult? Function(_WrongOTP value)? wrongOTP,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return userNotRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult Function(_WrongOTP value)? wrongOTP,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (userNotRegistered != null) {
      return userNotRegistered(this);
    }
    return orElse();
  }
}

abstract class _UserNotRegistered extends AuthError {
  const factory _UserNotRegistered({required final String message}) =
      _$_UserNotRegistered;
  const _UserNotRegistered._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UserNotRegisteredCopyWith<_$_UserNotRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserAlreadyRegisteredCopyWith<$Res>
    implements $AuthErrorCopyWith<$Res> {
  factory _$$_UserAlreadyRegisteredCopyWith(_$_UserAlreadyRegistered value,
          $Res Function(_$_UserAlreadyRegistered) then) =
      __$$_UserAlreadyRegisteredCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserAlreadyRegisteredCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res, _$_UserAlreadyRegistered>
    implements _$$_UserAlreadyRegisteredCopyWith<$Res> {
  __$$_UserAlreadyRegisteredCopyWithImpl(_$_UserAlreadyRegistered _value,
      $Res Function(_$_UserAlreadyRegistered) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserAlreadyRegistered(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserAlreadyRegistered extends _UserAlreadyRegistered {
  const _$_UserAlreadyRegistered({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'AuthError.alreadyRegistered(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAlreadyRegistered &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAlreadyRegisteredCopyWith<_$_UserAlreadyRegistered> get copyWith =>
      __$$_UserAlreadyRegisteredCopyWithImpl<_$_UserAlreadyRegistered>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) userNotRegistered,
    required TResult Function(String message) alreadyRegistered,
    required TResult Function(String message) wrongOTP,
    required TResult Function(String message) unknown,
  }) {
    return alreadyRegistered(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? userNotRegistered,
    TResult? Function(String message)? alreadyRegistered,
    TResult? Function(String message)? wrongOTP,
    TResult? Function(String message)? unknown,
  }) {
    return alreadyRegistered?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? userNotRegistered,
    TResult Function(String message)? alreadyRegistered,
    TResult Function(String message)? wrongOTP,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (alreadyRegistered != null) {
      return alreadyRegistered(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_UserAlreadyRegistered value) alreadyRegistered,
    required TResult Function(_WrongOTP value) wrongOTP,
    required TResult Function(_Unknown value) unknown,
  }) {
    return alreadyRegistered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult? Function(_WrongOTP value)? wrongOTP,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return alreadyRegistered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult Function(_WrongOTP value)? wrongOTP,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (alreadyRegistered != null) {
      return alreadyRegistered(this);
    }
    return orElse();
  }
}

abstract class _UserAlreadyRegistered extends AuthError {
  const factory _UserAlreadyRegistered({required final String message}) =
      _$_UserAlreadyRegistered;
  const _UserAlreadyRegistered._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UserAlreadyRegisteredCopyWith<_$_UserAlreadyRegistered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WrongOTPCopyWith<$Res> implements $AuthErrorCopyWith<$Res> {
  factory _$$_WrongOTPCopyWith(
          _$_WrongOTP value, $Res Function(_$_WrongOTP) then) =
      __$$_WrongOTPCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_WrongOTPCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res, _$_WrongOTP>
    implements _$$_WrongOTPCopyWith<$Res> {
  __$$_WrongOTPCopyWithImpl(
      _$_WrongOTP _value, $Res Function(_$_WrongOTP) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_WrongOTP(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WrongOTP extends _WrongOTP {
  const _$_WrongOTP({this.message = 'Wrong OTP entered!'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthError.wrongOTP(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WrongOTP &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WrongOTPCopyWith<_$_WrongOTP> get copyWith =>
      __$$_WrongOTPCopyWithImpl<_$_WrongOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) userNotRegistered,
    required TResult Function(String message) alreadyRegistered,
    required TResult Function(String message) wrongOTP,
    required TResult Function(String message) unknown,
  }) {
    return wrongOTP(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? userNotRegistered,
    TResult? Function(String message)? alreadyRegistered,
    TResult? Function(String message)? wrongOTP,
    TResult? Function(String message)? unknown,
  }) {
    return wrongOTP?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? userNotRegistered,
    TResult Function(String message)? alreadyRegistered,
    TResult Function(String message)? wrongOTP,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (wrongOTP != null) {
      return wrongOTP(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_UserAlreadyRegistered value) alreadyRegistered,
    required TResult Function(_WrongOTP value) wrongOTP,
    required TResult Function(_Unknown value) unknown,
  }) {
    return wrongOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult? Function(_WrongOTP value)? wrongOTP,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return wrongOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult Function(_WrongOTP value)? wrongOTP,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (wrongOTP != null) {
      return wrongOTP(this);
    }
    return orElse();
  }
}

abstract class _WrongOTP extends AuthError {
  const factory _WrongOTP({final String message}) = _$_WrongOTP;
  const _WrongOTP._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_WrongOTPCopyWith<_$_WrongOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res> implements $AuthErrorCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$AuthErrorCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Unknown(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unknown extends _Unknown {
  const _$_Unknown({this.message = 'Something went wrong!'}) : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthError.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) userNotRegistered,
    required TResult Function(String message) alreadyRegistered,
    required TResult Function(String message) wrongOTP,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? userNotRegistered,
    TResult? Function(String message)? alreadyRegistered,
    TResult? Function(String message)? wrongOTP,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? userNotRegistered,
    TResult Function(String message)? alreadyRegistered,
    TResult Function(String message)? wrongOTP,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotRegistered value) userNotRegistered,
    required TResult Function(_UserAlreadyRegistered value) alreadyRegistered,
    required TResult Function(_WrongOTP value) wrongOTP,
    required TResult Function(_Unknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNotRegistered value)? userNotRegistered,
    TResult? Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult? Function(_WrongOTP value)? wrongOTP,
    TResult? Function(_Unknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotRegistered value)? userNotRegistered,
    TResult Function(_UserAlreadyRegistered value)? alreadyRegistered,
    TResult Function(_WrongOTP value)? wrongOTP,
    TResult Function(_Unknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown extends AuthError {
  const factory _Unknown({final String message}) = _$_Unknown;
  const _Unknown._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}
