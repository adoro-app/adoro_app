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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
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
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
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
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
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
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}

/// @nodoc
abstract class _$$_SendingOtpCopyWith<$Res> {
  factory _$$_SendingOtpCopyWith(
          _$_SendingOtp value, $Res Function(_$_SendingOtp) then) =
      __$$_SendingOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendingOtpCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SendingOtp>
    implements _$$_SendingOtpCopyWith<$Res> {
  __$$_SendingOtpCopyWithImpl(
      _$_SendingOtp _value, $Res Function(_$_SendingOtp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendingOtp implements _SendingOtp {
  const _$_SendingOtp();

  @override
  String toString() {
    return 'AuthState.sendingOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendingOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) {
    return sendingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) {
    return sendingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
    required TResult orElse(),
  }) {
    if (sendingOtp != null) {
      return sendingOtp();
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
  const factory _SendingOtp() = _$_SendingOtp;
}

/// @nodoc
abstract class _$$_OtpStentCopyWith<$Res> {
  factory _$$_OtpStentCopyWith(
          _$_OtpStent value, $Res Function(_$_OtpStent) then) =
      __$$_OtpStentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OtpStentCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_OtpStent>
    implements _$$_OtpStentCopyWith<$Res> {
  __$$_OtpStentCopyWithImpl(
      _$_OtpStent _value, $Res Function(_$_OtpStent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OtpStent implements _OtpStent {
  const _$_OtpStent();

  @override
  String toString() {
    return 'AuthState.otpSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OtpStent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) {
    return otpSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) {
    return otpSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent();
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
  const factory _OtpStent() = _$_OtpStent;
}

/// @nodoc
abstract class _$$_VerifyingOtpCopyWith<$Res> {
  factory _$$_VerifyingOtpCopyWith(
          _$_VerifyingOtp value, $Res Function(_$_VerifyingOtp) then) =
      __$$_VerifyingOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyingOtpCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_VerifyingOtp>
    implements _$$_VerifyingOtpCopyWith<$Res> {
  __$$_VerifyingOtpCopyWithImpl(
      _$_VerifyingOtp _value, $Res Function(_$_VerifyingOtp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VerifyingOtp implements _VerifyingOtp {
  const _$_VerifyingOtp();

  @override
  String toString() {
    return 'AuthState.verifyingOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyingOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) {
    return verifyingOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) {
    return verifyingOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
    required TResult orElse(),
  }) {
    if (verifyingOtp != null) {
      return verifyingOtp();
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
  const factory _VerifyingOtp() = _$_VerifyingOtp;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
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
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthError error});

  $AuthErrorCopyWith<$Res> get error;
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
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AuthError,
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
  const _$_Error({required this.error});

  @override
  final AuthError error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() unauthenticated,
    required TResult Function() sendingOtp,
    required TResult Function() otpSent,
    required TResult Function() verifyingOtp,
    required TResult Function() authenticated,
    required TResult Function(AuthError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? unauthenticated,
    TResult? Function()? sendingOtp,
    TResult? Function()? otpSent,
    TResult? Function()? verifyingOtp,
    TResult? Function()? authenticated,
    TResult? Function(AuthError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? unauthenticated,
    TResult Function()? sendingOtp,
    TResult Function()? otpSent,
    TResult Function()? verifyingOtp,
    TResult Function()? authenticated,
    TResult Function(AuthError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
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
  const factory _Error({required final AuthError error}) = _$_Error;

  AuthError get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
