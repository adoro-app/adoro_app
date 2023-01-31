// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  User? get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_Initial(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.initial(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) {
    return initial(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) {
    return initial?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial({final User? user}) = _$_Initial;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_UnAuthenticated(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.unauthenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      __$$_UnAuthenticatedCopyWithImpl<_$_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) {
    return unauthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) {
    return unauthenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthState {
  const factory _UnAuthenticated({final User? user}) = _$_UnAuthenticated;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendingOtpCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_SendingOtpCopyWith(
          _$_SendingOtp value, $Res Function(_$_SendingOtp) then) =
      __$$_SendingOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_SendingOtpCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SendingOtp>
    implements _$$_SendingOtpCopyWith<$Res> {
  __$$_SendingOtpCopyWithImpl(
      _$_SendingOtp _value, $Res Function(_$_SendingOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_SendingOtp(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_SendingOtp implements _SendingOtp {
  const _$_SendingOtp({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.sendingOtp(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendingOtp &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendingOtpCopyWith<_$_SendingOtp> get copyWith =>
      __$$_SendingOtpCopyWithImpl<_$_SendingOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) {
    return sendingOtp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) {
    return sendingOtp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) {
    if (sendingOtp != null) {
      return sendingOtp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return sendingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return sendingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (sendingOtp != null) {
      return sendingOtp(this);
    }
    return orElse();
  }
}

abstract class _SendingOtp implements AuthState {
  const factory _SendingOtp({final User? user}) = _$_SendingOtp;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_SendingOtpCopyWith<_$_SendingOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtpStentCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_OtpStentCopyWith(
          _$_OtpStent value, $Res Function(_$_OtpStent) then) =
      __$$_OtpStentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_OtpStentCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_OtpStent>
    implements _$$_OtpStentCopyWith<$Res> {
  __$$_OtpStentCopyWithImpl(
      _$_OtpStent _value, $Res Function(_$_OtpStent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_OtpStent(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_OtpStent implements _OtpStent {
  const _$_OtpStent({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.otpSent(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpStent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpStentCopyWith<_$_OtpStent> get copyWith =>
      __$$_OtpStentCopyWithImpl<_$_OtpStent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) {
    return otpSent(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) {
    return otpSent?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class _OtpStent implements AuthState {
  const factory _OtpStent({final User? user}) = _$_OtpStent;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_OtpStentCopyWith<_$_OtpStent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VerifyingOtpCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_VerifyingOtpCopyWith(
          _$_VerifyingOtp value, $Res Function(_$_VerifyingOtp) then) =
      __$$_VerifyingOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_VerifyingOtpCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_VerifyingOtp>
    implements _$$_VerifyingOtpCopyWith<$Res> {
  __$$_VerifyingOtpCopyWithImpl(
      _$_VerifyingOtp _value, $Res Function(_$_VerifyingOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_VerifyingOtp(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_VerifyingOtp implements _VerifyingOtp {
  const _$_VerifyingOtp({this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.verifyingOtp(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyingOtp &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyingOtpCopyWith<_$_VerifyingOtp> get copyWith =>
      __$$_VerifyingOtpCopyWithImpl<_$_VerifyingOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) {
    return verifyingOtp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) {
    return verifyingOtp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) {
    if (verifyingOtp != null) {
      return verifyingOtp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return verifyingOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return verifyingOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verifyingOtp != null) {
      return verifyingOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyingOtp implements AuthState {
  const factory _VerifyingOtp({final User? user}) = _$_VerifyingOtp;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyingOtpCopyWith<_$_VerifyingOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_Authenticated(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated({required this.user});

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated({required final User? user}) = _$_Authenticated;

  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthError error, User? user});

  $AuthErrorCopyWith<$Res> get error;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? user = freezed,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthError,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthErrorCopyWith<$Res> get error {
    return $AuthErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error, this.user});

  @override
  final AuthError error;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.error(error: $error, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) initial,
    required TResult Function(User? user) unauthenticated,
    required TResult Function(User? user) sendingOtp,
    required TResult Function(User? user) otpSent,
    required TResult Function(User? user) verifyingOtp,
    required TResult Function(User? user) authenticated,
    required TResult Function(AuthError error, User? user) error,
  }) {
    return error(this.error, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User? user)? initial,
    TResult? Function(User? user)? unauthenticated,
    TResult? Function(User? user)? sendingOtp,
    TResult? Function(User? user)? otpSent,
    TResult? Function(User? user)? verifyingOtp,
    TResult? Function(User? user)? authenticated,
    TResult? Function(AuthError error, User? user)? error,
  }) {
    return error?.call(this.error, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? initial,
    TResult Function(User? user)? unauthenticated,
    TResult Function(User? user)? sendingOtp,
    TResult Function(User? user)? otpSent,
    TResult Function(User? user)? verifyingOtp,
    TResult Function(User? user)? authenticated,
    TResult Function(AuthError error, User? user)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UnAuthenticated value) unauthenticated,
    required TResult Function(_SendingOtp value) sendingOtp,
    required TResult Function(_OtpStent value) otpSent,
    required TResult Function(_VerifyingOtp value) verifyingOtp,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_UnAuthenticated value)? unauthenticated,
    TResult? Function(_SendingOtp value)? sendingOtp,
    TResult? Function(_OtpStent value)? otpSent,
    TResult? Function(_VerifyingOtp value)? verifyingOtp,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UnAuthenticated value)? unauthenticated,
    TResult Function(_SendingOtp value)? sendingOtp,
    TResult Function(_OtpStent value)? otpSent,
    TResult Function(_VerifyingOtp value)? verifyingOtp,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error({required final AuthError error, final User? user}) =
      _$_Error;

  AuthError get error;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
