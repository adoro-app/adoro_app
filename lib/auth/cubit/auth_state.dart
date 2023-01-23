part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial({User? user}) = _Initial;
  const factory AuthState.unauthenticated({User? user}) = _UnAuthenticated;
  const factory AuthState.sendingOtp({User? user}) = _SendingOtp;
  const factory AuthState.otpSent({User? user}) = _OtpStent;
  const factory AuthState.verifyingOtp({User? user}) = _VerifyingOtp;
  const factory AuthState.authenticated({required User? user}) = _Authenticated;
  const factory AuthState.error({required AuthError error, User? user}) =
      _Error;
}
