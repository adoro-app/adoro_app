import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verification_state.dart';
part 'otp_verification_cubit.freezed.dart';

class OtpVerificationCubit extends Cubit<OtpVerificationState> {
   late Timer _resendCodeTimer;

  OtpVerificationCubit() : super(OtpVerificationState.initial()) {
    playTimer();
  }

  playTimer() {
    _resendCodeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (state.secondsLeft > 0) {
        emit(OtpVerificationState(secondsLeft: state.secondsLeft - 1));
      } else {
        _resendCodeTimer.cancel();
      }
    });
  }

  reset() {
    emit(state.copyWith(secondsLeft: 30));
    playTimer();
  }

  @override
  Future<void> close() {
    _resendCodeTimer.cancel();
    return super.close();
  }
}
