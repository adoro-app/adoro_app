import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialv/auth/auth_error.dart';
import 'package:socialv/auth/auth_service.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService _authService;

  AuthCubit(this._authService) : super(const AuthState.initial()) {
    Future.delayed(Duration(seconds: 5), () {
      emit(AuthState.unauthenticated());
    });
  }

  Future<void> login(String mobileNo) async {
    emit(const AuthState.sendingOtp());
    final failureOrSuccess = await _authService.login(mobileNo);
    failureOrSuccess.fold((l) {
      emit(AuthState.error(error: l));
    }, (r) {
      emit(AuthState.otpSent());
    });
  }

  Future<void> verifyOTP(String mobileNo, String otp) async {
    emit(const AuthState.verifyingOtp());
    final failureOrSuccess = await _authService.validateOTP(mobileNo, otp);
    failureOrSuccess.fold((l) {
      emit(AuthState.error(error: l));
    }, (r) {
      emit(AuthState.authenticated());
    });
  }
}
