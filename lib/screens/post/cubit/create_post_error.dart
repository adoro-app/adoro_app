import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_post_error.freezed.dart';

@freezed
class CreatePostError with _$CreatePostError {
  const CreatePostError._();
  const factory CreatePostError.notConnectedToInternet() =
      _NotConnectedToInternet;
  const factory CreatePostError.server([String? message]) = _Server;
}
