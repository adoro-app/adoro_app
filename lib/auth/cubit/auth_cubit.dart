import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialv/auth/auth_service.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthService _authService;

  AuthCubit(this._authService) : super(const AuthState.initial()) {
    Future.delayed(const Duration(seconds: 3), () {
      emit(AuthState.unauthenticated());
    });
  }

  Future<void> login(String mobileNo) async {
    emit(const AuthState.sendingOtp());
    final success = await _authService.login(mobileNo);
    if (success) {
      emit(const AuthState.otpSent());
    } else {
      emit(const AuthState.error());
    }
  }

  Future<void> verifyOTP(String mobileNo, String otp) async {
    emit(const AuthState.verifyingOtp());
    final success = await _authService.validateOTP(mobileNo, otp);
    if (success) {
      emit(const AuthState.authenticated());
    } else {
      emit(const AuthState.error());
    }
  }
}
