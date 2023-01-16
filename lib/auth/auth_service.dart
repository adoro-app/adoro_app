import 'package:dio/dio.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  Future<bool> login(String mobileNo) async {
    try {
      final response = await _dio.post(
        '/login',
        data: {
          'mobileNo': mobileNo,
        },
      );
      if (response.data['status'] == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> signUp(
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
      if (response.data['status'] == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> validateOTP(
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
      if (response.data['status'] == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
