import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:socialv/auth/credentials_storage.dart';
import 'package:socialv/models/meme_category.dart';
import 'package:socialv/models/posts/user_post.dart';
import 'package:socialv/utils/woo_commerce/dio_extension.dart';

import '../auth/auth_service.dart';
import '../auth/cubit/auth_cubit.dart';
import '../choose_categories/cubit/choose_meme_category_error.dart';
import '../models/posts/feed.dart';
import '../models/user/user.dart';
import '../screens/post/cubit/create_post_error.dart';
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
      final loginHandle = await sl.get<CredentialsStorage>().read();
      print(loginHandle?.token);
      if (loginHandle?.token != null) {
        final response = await _dio.get(
          "/feed",
          options: Options(
            headers: {
              "token": loginHandle!.token,
            },
          ),
          queryParameters: {"category": category.name},
        );
        print(response.data);
        final feed = (response.data as List<dynamic>)
            .map((e) => Feed.fromJson(e))
            .toList();

        return feed;
      }
      return null;
    } catch (e) {
      print('---------------------');
      print('ERROR: $e');
      print('---------------------');
      return null;
    }
  }

  Future<List<UserPost>> getAllPostByUser() async {
    final loginHandle = await sl.get<CredentialsStorage>().read();
    final response = await _dio.get(
      '/getAllPostByUser',
      options: Options(
        headers: {'token': loginHandle!.token},
      ),
    );
    final userPosts = (response.data['data'] as List<dynamic>)
        .map((e) => UserPost.fromJson(e))
        .toList();
    return userPosts;
  }

  Future<Either<Exception, User>> getUserDetails() async {
    try {
      final userId = sl.get<AuthCubit>().state.user!.id;
      final response = await _dio.get(
        '/getUserDetails',
        queryParameters: {"userId": userId},
      );

      final userDetails = (response.data['data'] as List<dynamic>)
          .map((e) => User.fromJson(e))
          .toList();

      return right(userDetails.first);
    } on Exception catch (error) {
      return left(error);
    }
  }

  Future<Either<Exception, Unit>> updateUserDetails(
      {required int userId,
      required int mobileNumber,
      required String userName,
      required String bankName,
      required String fullName,
      required String mailId,
      required String beneficiaryName,
      required String accountNumber,
      required String ifscCode}) async {
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
      return right(unit);
    } on Exception catch (error) {
      return left(error);
    }
  }

  Future<Either<Exception, Unit>> uploadProfilePic({required File file}) async {
    try {
      final loginHandle = await sl.get<CredentialsStorage>().read();
      String fileName = file.path.split('/').last;
      var formData = FormData.fromMap({
        'profile_pic':
            await MultipartFile.fromFile(file.path, filename: fileName)
      });
      if (loginHandle?.token != null) {
        final response = await _dio.post(
          '/upload_profile_pic',
          options: Options(
            headers: {
              'token': loginHandle!.token,
            },
          ),
          data: formData,
        );
        print('Response: $response');
      }
      return right(unit);
    } on DioError catch (e) {
      print('ERROR Occured: ${e.response}');
      return left(e.response?.data['msg'] ?? 'Something went wrong!');
    }
  }

  Future<Either<ChooseMemeCategoryError, Unit>> updateSelectedCategories(
      List<int> selectedCategories) async {
    try {
      final loginHandle = await sl.get<CredentialsStorage>().read();
      print(loginHandle?.token);
      if (loginHandle?.token != null) {
        final response = await _dio.post(
          '/user_category',
          options: Options(
            headers: {'token': loginHandle!.token},
          ),
          data: {
            "selected_category_ids": selectedCategories,
          },
        );
        print('Response: $response');
      }

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

  Future<Either<CreatePostError, Unit>> createPost({
    required File file,
    required String categoryId,
    required String content,
  }) async {
    try {
      final loginHandle = await sl.get<CredentialsStorage>().read();
      print(loginHandle?.token);
      String fileName = file.path.split('/').last;
      var formData = FormData.fromMap({
        'category_id': categoryId,
        'content': content,
        'content_type': 'video/image/gif',
        'content_url':
            await MultipartFile.fromFile(file.path, filename: fileName),
      });
      if (loginHandle?.token != null) {
        final response = await _dio.post(
          '/createPost',
          options: Options(
            headers: {
              'token': loginHandle!.token,
            },
          ),
          data: formData,
        );
        print('Response: $response');
      }
      return right(unit);
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return left(const CreatePostError.notConnectedToInternet());
      } else {
        print('ERROR Occured: ${e.response}');
        return left(CreatePostError.server(
            e.response?.data['msg'] ?? 'Something went wrong!'));
      }
    }
  }
}

enum Category { trending, relevant, fresh }
