import 'package:dio/dio.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  // Future login(String mobileNo) async {
  //   try {
  //     await _dio.post('/login', data: {'mobileNo' : mobileNo});
  //   }
  // }

  Future signUp(String mobileNo, String userName) async {
    final response = await _dio.post(
      '/signUp',
      data: {
        'mobileNo': mobileNo,
        'username': userName,
      },
    );
    print(response);
    print('-----------');
    print(response.data);
  }
}
