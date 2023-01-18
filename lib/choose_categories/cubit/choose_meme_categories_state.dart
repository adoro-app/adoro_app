part of 'choose_meme_categories_cubit.dart';

@freezed
class ChooseMemeCategoriesState with _$ChooseMemeCategoriesState {
  const factory ChooseMemeCategoriesState.initial() = _Initial;
  const factory ChooseMemeCategoriesState.loading() = _Loading;
  const factory ChooseMemeCategoriesState.success({
    required List<MemeCategory> categories,
    required List<int> selectedCategories,
  }) = _Success;
  const factory ChooseMemeCategoriesState.error() = _Error;
}
