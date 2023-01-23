import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../models/posts/feed.dart';
import '../../../network/api_service.dart';
import 'feed_error.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final ApiService apiService;
  HomeCubit({required this.apiService}) : super(HomeState.initial());
  Future<void> loadFeed() async {
    emit(HomeState.loading());

    final feed = await apiService.getFeed(Category.trending);
    if (feed == null) {
      emit(HomeState.error(error: FeedError.server('Nothing to show here')));
      return;
    }
    emit(HomeState.success(feed: feed));
  }
}
