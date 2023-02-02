import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialv/models/meme_category.dart';
import 'package:socialv/network/api_service.dart';

import 'choose_meme_category_error.dart';

part 'choose_meme_categories_state.dart';
part 'choose_meme_categories_cubit.freezed.dart';

class ChooseMemeCategoriesCubit extends Cubit<ChooseMemeCategoriesState> {
  final ApiService apiService;
  ChooseMemeCategoriesCubit({required this.apiService})
      : super(ChooseMemeCategoriesState.initial());

  Future<void> loadMemeCategories() async {
    emit(ChooseMemeCategoriesState.loading());

    final categories = await apiService.getMemeCategories();
    if (categories == null) {
      emit(ChooseMemeCategoriesState.error());
      return;
    }
    emit(
      ChooseMemeCategoriesState.success(
        categories: categories,
        selectedCategories: [],
      ),
    );
  }

  void categoryTapped(int id) {
    state.maybeWhen(
      orElse: () {},
      success: (categories, selectedCategories) {
        if (selectedCategories.contains(id)) {
          emit(
            ChooseMemeCategoriesState.success(
              categories: categories,
              selectedCategories: [...selectedCategories]..remove(id),
            ),
          );
        } else {
          emit(
            ChooseMemeCategoriesState.success(
              categories: categories,
              selectedCategories: [...selectedCategories, id],
            ),
          );
        }
      },
    );
  }

  Future<void> uploadSelectedCategory(List<int> selectedCategories) async {
    final failureOrSuccess =
        await apiService.updateSelectedCategories(selectedCategories);
    failureOrSuccess.fold((l) {
      emit(ChooseMemeCategoriesState.error(error: l));
    }, (r) => emit(ChooseMemeCategoriesState.categoriesUploaded()));
  }
}
