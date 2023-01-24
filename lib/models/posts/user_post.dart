import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_post.freezed.dart';
part 'user_post.g.dart';

@freezed
class UserPost with _$UserPost {
  const UserPost._();
  const factory UserPost({
    required int id,
    required String content,
    required String content_type,
    required String content_url,
    required String created_on,
  }) = _UserPost;

  factory UserPost.fromJson(Map<String, dynamic> json) =>
      _$UserPostFromJson(json);
}
