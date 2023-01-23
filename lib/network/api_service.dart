import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:socialv/auth/auth_service.dart';
import 'package:socialv/models/meme_category.dart';
import 'package:socialv/utils/woo_commerce/dio_extension.dart';

import '../choose_categories/cubit/choose_meme_category_error.dart';
import '../models/posts/feed.dart';
import '../service_locator.dart';

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

  Future<List<Feed>?> getFeed(Category category) async {
    try {
      final token = await AuthService(sl(), sl()).getSignedInCredentials();

      final response = await _dio.get(
        "/feed",
        options: Options(
          headers: {
            "token":
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiaWF0IjoxNjczOTc5MjQ2LCJleHAiOjE2NzQ4NDMyNDZ9.PYrIqLl_ra-aW2cbbzaXM9EzMUcn-O3IkRZ1H73WdYQ',
          },
        ),
        queryParameters: {"category": category.name},
      );

      final feed = (response.data as List<dynamic>)
          .map((e) => Feed.fromJson(e))
          .toList();

      return feed;
    } catch (e) {
      print('---------------------');
      print('ERROR: $e');
      print('---------------------');
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

  Future<Either<ChooseMemeCategoryError, Unit>> updateSelectedCategories(
      List<int> selectedCategories) async {
    try {
      final token = await AuthService(sl(), sl()).getSignedInCredentials();
      print(token);
      print(selectedCategories);
      final response = await _dio.post(
        '/user_category',
        options: Options(
          headers: {'token': token},
        ),
        data: {
          "selected_category_ids": selectedCategories,
        },
      );
      print('Response: $response');
      return right(unit);
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(const ChooseMemeCategoryError.notConnectedToInternet());
      } else {
        print('ERROR Occured: ${e.response}');
        return left(ChooseMemeCategoryError.server(
            e.response?.data['msg'] ?? 'Something went wrong!'));
      }
    }
  }
}

enum Category { trending, relevant, fresh }
