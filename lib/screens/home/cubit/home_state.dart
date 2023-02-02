part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.success({required List<Feed> feed}) = _Success;
  // const factory HomeState.likePost() = _LikePost;
  const factory HomeState.error({
    required FeedError error,
  }) = _Error;
}
