import 'package:dio/dio.dart';
import 'package:socialv/models/meme_category.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<List<MemeCategory>?> getMemeCategories() async {
    try {
      final response = await _dio.get(
        '/meme_categories',
      );
      final status = response.data['status'] as int;

      if (status == 200) {
        final memeCategories = (response.data['data'] as List<dynamic>)
            .map((e) => MemeCategory.fromJson(e))
            .toList();
        return memeCategories;
      }
      return null;
    } catch (e) {
      print('---------------------');
      print('ERROR: $e');
      print('---------------------');
      return null;
    }
  }

  Future<void> updateUserDetails(
      {required int userId,
      required int mobileNumber,
      required String userName,
      required String bankName,
      required String beneficiaryName,
      required int accountNumber,
      required int ifscCode}) async {
    try {
      final response = await _dio.post('/updateUserDetails', data: {
        "userId": userId,
        "mobileNumber": mobileNumber,
        "userName": userName,
        "bankName": bankName,
        "beneficiaryName": beneficiaryName,
        "accountNumber": accountNumber,
        "ifscCode": ifscCode
      });
      final status = response.data['status'] as int;
      print(response);
      print(status);
    } catch (e) {
      print('---------------------');
      print('ERROR: $e');
      print('---------------------');
    }
  }
}
