part of 'createpost_cubit.dart';

@freezed
class CreatepostState with _$CreatepostState {
  const factory CreatepostState.initial() = _Initial;
  const factory CreatepostState.loading() = _Loading;
  const factory CreatepostState.success() = _Success;
  const factory CreatepostState.selectFile({File? selectedFile}) = _SelectImage;
  const factory CreatepostState.error({
    CreatePostError? error,
  }) = _Error;
}
