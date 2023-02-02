import 'package:freezed_annotation/freezed_annotation.dart';
part 'feed_error.freezed.dart';

@freezed
class FeedError with _$FeedError {
  const FeedError._();
  const factory FeedError.notConnectedToInternet() = _NotConnectedToInternet;
  const factory FeedError.server([String? message]) = _Server;
}
