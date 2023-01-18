import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:socialv/auth/auth_error.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  Future<Either<AuthError, Unit>> login(String mobileNo) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'mobileNo': mobileNo,
        },
      );
      final status = response.data['status'] as int;
      final msg = response.data['msg'] as String;
      if (status == 200) {
        return right(unit);
      }
      return left(AuthError.userNotRegistered(message: msg));
    } catch (e) {
      print('---------------------');
      print('ERROR: e');
      print('---------------------');
      return left(const AuthError.unknown());
    }
  }

  Future<Either<AuthError, Unit>> signUp(
    String mobileNo,
    String username,
  ) async {
    try {
      final response = await _dio.post(
        '/signup',
        data: {
          'mobileNo': mobileNo,
          'username': username,
        },
      );
      final status = response.data['status'] as int;
      final msg = response.data['msg'] as String;

      if (status == 200) {
        return right(unit);
      }
      return left(AuthError.alreadyRegistered(message: msg));
    } catch (e) {
      print('---------------------');
      print('ERROR: e');
      print('---------------------');
      return left(const AuthError.unknown());
    }
  }

  Future<Either<AuthError, Unit>> validateOTP(
    String mobileNo,
    String otp,
  ) async {
    try {
      final response = await _dio.post(
        '/validateOTP',
        data: {
          'mobileNo': mobileNo,
          'otp': otp,
        },
      );
      final status = response.data['status'] as int;

      if (status == 200) {
        return right(unit);
      }
      return left(const AuthError.wrongOTP());
    } catch (e) {
      print('---------------------');
      print('ERROR: e');
      print('---------------------');
      return left(const AuthError.unknown());
    }
  }
}
