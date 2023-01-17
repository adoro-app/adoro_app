part of 'otp_verification_cubit.dart';

@freezed
class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({required int secondsLeft}) =
      _OtpVerificationState;
  factory OtpVerificationState.initial() =>
      const OtpVerificationState(secondsLeft: 30);
}
