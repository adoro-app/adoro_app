import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:socialv/auth/auth_error.dart';
import 'package:socialv/auth/credentials_storage.dart';

import '../models/user/user.dart';

class AuthService {
  final Dio _dio;
  final CredentialsStorage _credentialsStorage;

  AuthService(
    this._dio,
    this._credentialsStorage,
  );

  Future<String?> getSignedInCredentials() async {
    try {
      final storedCredentials = await _credentialsStorage.read();
      return storedCredentials;
    } on PlatformException {
      return null;
    }
  }

  Future<User?> getUserDetails() async {
    try {
      final userDetails = await _credentialsStorage.readUserDetails();
      return userDetails;
    } on PlatformException {
      return null;
    }
  }

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

  Future<Either<AuthError, User>> validateOTP(
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
        final token = response.data['token'] as String;
        final data = response.data["data"];
        final user = User.fromJson(data as Map<String, dynamic>);
        _credentialsStorage.save(token);
        _credentialsStorage.saveUserDetails(user);
        return right(user);
      }
      return left(const AuthError.wrongOTP());
    } catch (e) {
      print('---------------------');
      print('ERROR: $e');
      print('---------------------');
      return left(const AuthError.unknown());
    }
  }

  Future<void> signOut() async {
    await _credentialsStorage.clear();
  }
}
