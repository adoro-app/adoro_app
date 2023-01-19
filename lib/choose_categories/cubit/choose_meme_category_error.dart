import 'package:freezed_annotation/freezed_annotation.dart';
part 'choose_meme_category_error.freezed.dart';

@freezed
class ChooseMemeCategoryError with _$ChooseMemeCategoryError {
  const ChooseMemeCategoryError._();
  const factory ChooseMemeCategoryError.notConnectedToInternet() =
      _NotConnectedToInternet;
  const factory ChooseMemeCategoryError.server([String? message]) = _Server;
}
