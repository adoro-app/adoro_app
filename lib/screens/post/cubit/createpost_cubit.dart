import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../network/api_service.dart';
import 'create_post_error.dart';

part 'createpost_state.dart';
part 'createpost_cubit.freezed.dart';

class CreatepostCubit extends Cubit<CreatepostState> {
  final ApiService apiService;
  FilePickerResult? _fileResult;

  CreatepostCubit(this.apiService) : super(CreatepostState.initial());
  Future<void> createPost({
    required File file,
    required String categoryId,
    required String content,
  }) async {
    final failureOrSuccess = await apiService.createPost(
        categoryId: categoryId, content: content, file: file);
    failureOrSuccess.fold((l) => emit(CreatepostState.error(error: l)), (r) {
      emit(CreatepostState.success());
      emit(CreatepostState.loading());
    });
  }

  void openFileExplorer(FileType _pickType) async {
    try {
      _fileResult = await FilePicker.platform
          .pickFiles(type: _pickType, allowMultiple: false);
      File file = File(_fileResult!.files.first.path!);
      emit(CreatepostState.selectFile(selectedFile: file));
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
  }
}
