import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/choose_categories/choose_categories_shimmer.dart';
import 'package:socialv/choose_categories/cubit/choose_meme_categories_cubit.dart';
import 'package:socialv/utils/app_constants.dart';

class ChooseCategoriesPage extends StatefulWidget {
  const ChooseCategoriesPage({super.key});

  @override
  State<ChooseCategoriesPage> createState() => _ChooseCategoriesPageState();
}

class _ChooseCategoriesPageState extends State<ChooseCategoriesPage> {
  @override
  void initState() {
    super.initState();
    setStatusBarColorBasedOnTheme();
    context.read<ChooseMemeCategoriesCubit>().loadMemeCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.height,
            Text('Welcome to adoro', style: boldTextStyle(size: 24)),
            Text('Choose 5 or more meme categories',
                style: secondaryTextStyle(weight: FontWeight.w500)),
            24.height,
            Expanded(
              child: BlocBuilder<ChooseMemeCategoriesCubit,
                  ChooseMemeCategoriesState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const SizedBox(),
                    loading: () => const ChooseCategoriesShimmer(),
                    success: (categories, selected) => GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 1.2,
                      children: List.generate(
                        categories.length,
                        (index) => InkWell(
                          onTap: () {
                            context
                                .read<ChooseMemeCategoriesCubit>()
                                .categoryTapped(categories[index].id);
                          },
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade100,
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            categories[index].imageUrl ?? ''))),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(categories[index].title,
                                    style: boldTextStyle(
                                      size: 12,
                                      color: Colors.white,
                                    )),
                              ).paddingBottom(4.0),
                              if (selected.contains(categories[index].id))
                                Container(
                                  height: 24,
                                  width: 24,
                                  child: Image.asset('assets/icons/ic_tick.png',
                                      fit: BoxFit.cover),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff00FFFF),
                                          Color(0xffFFC0CB),
                                          Color(0xffFFFF00),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight),
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    error: () => Center(child: Text('Something went wrong!')),
                  );
                },
              ),
            ),
            24.height,
            BlocBuilder<ChooseMemeCategoriesCubit, ChooseMemeCategoriesState>(
              builder: (context, state) {
                return InkWell(
                  onTap: state.maybeWhen(
                    orElse: () => null,
                    success: (categories, selectedCategories) =>
                        selectedCategories.length > 4 ? () {} : null,
                  ),
                  child: Container(
                    width: context.width() - 32,
                    height: 50,
                    decoration: BoxDecoration(
                      color: state.maybeWhen(
                        orElse: () => Colors.grey,
                        success: (categories, selectedCategories) =>
                            selectedCategories.length > 4 ? null : Colors.grey,
                      ),
                      gradient: state.maybeWhen(
                        orElse: () => null,
                        success: (categories, selectedCategories) =>
                            selectedCategories.length > 4
                                ? LinearGradient(
                                    colors: [
                                        Color(0xff00FFFF),
                                        Color(0xffFFC0CB),
                                        Color(0xffFFFF00),
                                      ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight)
                                : null,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'DONE',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
            24.height,
          ],
        ),
      )),
    );
  }
}
