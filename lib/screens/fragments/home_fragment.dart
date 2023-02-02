import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/components/loading_widget.dart';
import 'package:socialv/components/no_data_lottie_widget.dart';
import 'package:socialv/main.dart';
import 'package:socialv/models/posts/post_model.dart';
import 'package:socialv/network/rest_apis.dart';
import 'package:socialv/screens/dashboard_screen.dart';
import 'package:socialv/screens/home/components/ad_component.dart';
import 'package:socialv/screens/home/components/initial_home_component.dart';
import 'package:socialv/screens/home/cubit/home_cubit.dart';
import 'package:socialv/screens/post/components/post_component.dart';
import 'package:socialv/screens/stories/component/home_story_component.dart';

import '../../utils/app_constants.dart';

class HomeFragment extends StatefulWidget {
  final ScrollController controller;

  const HomeFragment({super.key, required this.controller});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  List<PostModel> postList = [];
  // late Future<List<PostModel>> future;
  // bool isError = false;
  // int mPage = 1;
  // bool mIsLastPage = false;

  @override
  void initState() {
    context.read<HomeCubit>().loadFeed();
    // future = getPostList();

    // _animationController = BottomSheet.createAnimationController(this);
    // _animationController.duration = const Duration(milliseconds: 500);
    // _animationController.drive(CurveTween(curve: Curves.easeOutQuad));

    super.initState();

    // setStatusBarColorBasedOnTheme();

    // widget.controller.addListener(() {
    //   /// pagination
    //   if (selectedIndex == 0) {
    //     if (widget.controller.position.pixels ==
    //         widget.controller.position.maxScrollExtent) {
    //       if (!mIsLastPage) {
    //         mPage++;
    //         setState(() {});

    //         future = getPostList();
    //       }
    //     }
    //   }
    // }
    // );

    // LiveStream().on(OnAddPost, (p0) {
    //   postList.clear();
    //   mPage = 1;
    //   future = getPostList();
    // });
  }

  // Future<List<PostModel>> getPostList() async {
  //   appStore.setLoading(true);
  //   await getPost(page: mPage, type: PostRequestType.all).then((value) {
  //     if (mPage == 1) postList.clear();

  //     mIsLastPage = value.length != PER_PAGE;
  //     postList.addAll(value);
  //     setState(() {});

  //     appStore.setLoading(false);
  //   }).catchError((e) {
  //     isError = true;
  //     appStore.setLoading(false);
  //     toast(e.toString(), print: true);

  //     setState(() {});
  //   });

  //   return postList;
  // }

  // @override
  // void setState(fn) {
  //   if (mounted) super.setState(fn);
  // }

  // @override
  // void dispose() {
  //   LiveStream().dispose(OnAddPost);
  //   _animationController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return state.maybeWhen(
                error: (error) => SizedBox(
                      height: context.height() * 0.8,
                      child: NoDataWidget(
                        imageWidget: NoDataLottieWidget(),
                        title: language.somethingWentWrong,
                      ).center(),
                    ),
                orElse: () => SizedBox(),
                success: (feed) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.height,
                      AnimatedListView(
                        padding: EdgeInsets.only(left: 8, right: 8, bottom: 60),
                        itemCount: feed.length,
                        slideConfiguration: SlideConfiguration(
                            delay: 80.milliseconds, verticalOffset: 300),
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              PostComponent(
                                post: feed[index],
                                count: 0,
                                // callback: () {
                                //   mPage = 1;
                                //   future = getPostList();
                                // },
                              ),
                            ],
                          );
                        },
                        shrinkWrap: true,
                      ),
                    ],
                  );
                });
          },
        ),
      ],
    );
  }
}
