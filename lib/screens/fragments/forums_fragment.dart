import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/components/loading_widget.dart';
import 'package:socialv/components/no_data_lottie_widget.dart';
import 'package:socialv/main.dart';
import 'package:socialv/models/forums/forum_model.dart';
import 'package:socialv/network/rest_apis.dart';
import 'package:socialv/screens/dashboard_screen.dart';
import 'package:socialv/screens/forums/components/forums_card_component.dart';
import 'package:socialv/screens/forums/screens/forum_detail_screen.dart';

import '../../../utils/app_constants.dart';

class ForumsFragment extends StatefulWidget {
  final ScrollController controller;

  const ForumsFragment({super.key, required this.controller});

  @override
  State<ForumsFragment> createState() => _ForumsFragment();
}

class _ForumsFragment extends State<ForumsFragment> {
  List<ForumModel> forumsList = [];
  late Future<List<ForumModel>> future;

  int mPage = 1;
  bool mIsLastPage = false;

  bool isError = false;

  @override
  void initState() {
    future = getForums();
    super.initState();

    widget.controller.addListener(() {
      /// pagination
      if (selectedIndex == 2) {
        if (widget.controller.position.pixels == widget.controller.position.maxScrollExtent) {
          if (!mIsLastPage) {
            mPage++;
            setState(() {});

            future = getForums();
          }
        }
      }
    });

    LiveStream().on(RefreshForumsFragment, (p0) {
      forumsList.clear();
      mPage = 1;
      future = getForums();
    });
  }

  Future<List<ForumModel>> getForums() async {
    appStore.setLoading(true);
    await getForumList(page: mPage).then((value) {
      if (mPage == 1) forumsList.clear();
      mIsLastPage = value.length != PER_PAGE;
      forumsList.addAll(value);
      setState(() {});

      appStore.setLoading(false);
    }).catchError((e) {
      isError = true;
      appStore.setLoading(false);
      toast(e.toString(), print: true);
    });

    return forumsList;
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    LiveStream().dispose(RefreshForumsFragment);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        FutureBuilder<List<ForumModel>>(
          future: future,
          builder: (ctx, snap) {
            if (snap.hasError) {
              return SizedBox(
                height: context.height() * 0.8,
                child: NoDataWidget(
                  imageWidget: NoDataLottieWidget(),
                  title: isError ? language.somethingWentWrong : language.noDataFound,
                  onRetry: () {
                    LiveStream().emit(RefreshForumsFragment);
                  },
                  retryText: '   ${language.clickToRefresh}   ',
                ).center(),
              );
            }

            if (snap.hasData) {
              if (snap.data.validate().isEmpty) {
                return SizedBox(
                  height: context.height() * 0.8,
                  child: NoDataWidget(
                    imageWidget: NoDataLottieWidget(),
                    title: isError ? language.somethingWentWrong : language.noDataFound,
                    onRetry: () {
                      LiveStream().emit(RefreshForumsFragment);
                    },
                    retryText: '   ${language.clickToRefresh}   ',
                  ).center(),
                );
              } else {
                return AnimatedListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  slideConfiguration: SlideConfiguration(delay: 80.milliseconds, verticalOffset: 300),
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 50, top: 16),
                  itemCount: forumsList.length,
                  itemBuilder: (context, index) {
                    ForumModel data = forumsList[index];
                    return InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        ForumDetailScreen(
                          forumId: data.id.validate(),
                          type: data.type.validate(),
                        ).launch(context).then((value) {
                          if (value ?? false) {
                            mPage = 1;
                            future = getForums();
                          }
                        });
                      },
                      child: ForumsCardComponent(
                        title: data.title,
                        description: data.description,
                        postCount: data.postCount,
                        topicCount: data.topicCount,
                        freshness: data.freshness,
                      ),
                    );
                  },
                  onNextPage: () {
                    if (!mIsLastPage) {
                      mPage++;
                      future = getForums();
                    }
                  },
                );
              }
            }
            return Offstage();
          },
        ),
        Observer(
          builder: (_) {
            if (appStore.isLoading) {
              return Positioned(
                bottom: mPage != 1 ? 10 : null,
                child: LoadingWidget(isBlurBackground: mPage == 1 ? true : false),
              );
            } else {
              return Offstage();
            }
          },
        ),
      ],
    );
  }
}
