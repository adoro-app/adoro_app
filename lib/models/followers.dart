import 'package:freezed_annotation/freezed_annotation.dart';
part 'followers.freezed.dart';
part 'followers.g.dart';

@freezed
class Followers with _$Followers {
  const Followers._();
  const factory Followers({
    required int? id,
    required String? username,
    required String? image,
  }) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}
