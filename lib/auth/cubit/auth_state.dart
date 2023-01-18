part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _UnAuthenticated;
  const factory AuthState.sendingOtp() = _SendingOtp;
  const factory AuthState.otpSent() = _OtpStent;
  const factory AuthState.verifyingOtp() = _VerifyingOtp;
  const factory AuthState.authenticated() = _Authenticated;
  const factory AuthState.error({
    required AuthError error,
  }) = _Error;
}
