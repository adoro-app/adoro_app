import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socialv/models/meme_category.dart';
import 'package:socialv/network/api_service.dart';

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
    emit(ChooseMemeCategoriesState.success(categories: categories));
  }
}
