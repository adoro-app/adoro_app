import 'package:freezed_annotation/freezed_annotation.dart';
part 'meme_category.freezed.dart';
part 'meme_category.g.dart';

@freezed
class MemeCategory with _$MemeCategory {
  const MemeCategory._();
  const factory MemeCategory({
    required int id,
    required String title,
    required String? imageUrl,
  }) = _MemeCategory;

  factory MemeCategory.fromJson(Map<String, dynamic> json) =>
      _$MemeCategoryFromJson(json);
}
