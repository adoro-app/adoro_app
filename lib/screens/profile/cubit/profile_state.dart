part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isSubmitting,
    File? selectedImage,
    User? user,
    Either<Exception, Unit>? successOrFailure,
  }) = _ProfileState;
  factory ProfileState.initial() => const ProfileState(isSubmitting: false);
}
