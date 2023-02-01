import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/posts/user_post.dart';
import '../../../network/api_service.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ApiService apiService;
  FilePickerResult? _image;
  FileType _pickType = FileType.image;
  ProfileCubit(this.apiService) : super(ProfileState.initial());
  Future<void> updateUserInfo(
      {required int userId,
      required int mobileNumber,
      required String userName,
      required String fullName,
      required String bankName,
      required String mailId,
      required String beneficiaryName,
      required String accountNumber,
      required String ifscCode}) async {
    emit(state.copyWith(isSubmitting: true));
    final successOrFailure = await apiService.updateUserDetails(
        mailId: mailId,
        fullName: fullName,
        userId: userId,
        mobileNumber: mobileNumber,
        userName: userName,
        bankName: bankName,
        beneficiaryName: beneficiaryName,
        accountNumber: accountNumber,
        ifscCode: ifscCode);
    successOrFailure.fold(
        (l) {},
        (r) => emit(state.copyWith(
            isSubmitting: false, successOrFailure: successOrFailure)));
  }

  Future<void> updateUserProfile({required File file}) async {
    emit(state.copyWith(isSubmitting: true));
    final successOrFailure = await apiService.uploadProfilePic(file: file);
    successOrFailure.fold(
        (l) {},
        (r) => emit(state.copyWith(
            isSubmitting: false, successOrFailure: successOrFailure)));
  }

  void openFileExplorer() async {
    try {
      _image = await FilePicker.platform.pickFiles(type: _pickType);
      File file = File(_image!.files.first.path!);
      emit(state.copyWith(selectedImage: file));
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
  }

  Future<void> loadUserPosts() async {
    emit(state.copyWith(loading: true));
    final userPosts = await apiService.getAllPostByUser();
    emit(state.copyWith(userPosts: userPosts, loading: false));
  }
}
