part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {required bool isSubmitting,
      required bool loading,
      File? selectedImage,
      User? user,
      Either<Exception, Unit>? successOrFailure,
      required List<UserPost> userPosts}) = _ProfileState;
  factory ProfileState.initial() =>
      const ProfileState(isSubmitting: false, loading: true, userPosts: []);
}
