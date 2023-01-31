import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nb_utils/nb_utils.dart';

import '../followers.dart';
part 'feed.freezed.dart';
part 'feed.g.dart';

@freezed
class Feed with _$Feed {
  const Feed._();
  const factory Feed({
    required int id,
    required String user_id,
    required String content,
    required String content_type,
    required String content_url,
    required String category_id,
    required String created_on,
    @JsonKey(fromJson: getLikesfromJson) required int noOfLikes,
    required List<Followers> likedByPeople,
    required bool likedByMe,
    required List<Followers> author,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}

// class NoOfLikesConverter implements JsonConverter {
//   const NoOfLikesConverter();

//   @override
//   int fromJson(json) {
//     if (json.runtimeType == String) {
//       if (json.contains("")) {
//         json = '0';
//       }
//       return int.parse(json);
//     } else
//       return json;
//   }

//   @override
//   int toJson(object) => object;
// }

int getLikesfromJson(dynamic data) {
  if (data.runtimeType == String) {
    if (data.contains("")) {
      data = '0';
    }
    return int.parse(data);
  } else
    return data;
}
