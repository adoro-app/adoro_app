import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_plus/share_plus.dart';
import 'package:socialv/components/like_button_widget.dart';
import 'package:socialv/components/quick_view_post_widget.dart';
import 'package:socialv/screens/blockReport/components/show_report_dialog.dart';
import 'package:socialv/main.dart';
import 'package:socialv/models/posts/get_post_likes_model.dart';
import 'package:socialv/models/posts/post_model.dart';
import 'package:socialv/network/rest_apis.dart';
import 'package:socialv/screens/home/cubit/home_cubit.dart';
import 'package:socialv/screens/post/components/post_media_component.dart';
import 'package:socialv/screens/post/screens/comment_screen.dart';
import 'package:socialv/screens/post/screens/post_likes_screen.dart';
import 'package:socialv/screens/post/screens/single_post_screen.dart';
import 'package:socialv/screens/profile/screens/member_profile_screen.dart';
import 'package:socialv/utils/cached_network_image.dart';
import 'package:socialv/utils/overlay_handler.dart';

import '../../../auth/cubit/auth_cubit.dart';
import '../../../models/posts/feed.dart';
import '../../../service_locator.dart';
import '../../../utils/app_constants.dart';

// ignore: must_be_immutable
class PostComponent extends StatefulWidget {
  final Feed post;
  final VoidCallback? callback;
  int? count;

  PostComponent({required this.post, this.callback, this.count});

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  // OverlayHandler _overlayHandler = OverlayHandler();
  // PageController pageController = PageController();

  List<GetPostLikesModel> postLikeList = [];
  bool isLiked = false;
  int postLikeCount = 0;
  int index = 0;

  @override
  void initState() {
    super.initState();
    // init();
  }

  // Future<void> init() async {
  //   postLikeList = widget.post.usersWhoLiked.validate();
  //   postLikeCount = widget.post.likeCount.validate();
  //   isLiked = widget.post.isLiked.validate();
  // }

  // @override
  // void setState(fn) {
  //   if (mounted) super.setState(fn);
  // }

  // @override
  // void dispose() {
  //   _overlayHandler.removeOverlay(context);
  //   pageController.dispose();
  //   super.dispose();
  // }

  // Future<void> postLike() async {
  //   ifNotTester(() async {
  //     isLiked = !isLiked;

  //     if (isLiked) {
  //       if (postLikeList.length < 3 && isLiked) {
  //         postLikeList.add(GetPostLikesModel(
  //           userId: appStore.loginUserId,
  //           userAvatar: appStore.loginAvatarUrl,
  //           userName: appStore.loginFullName,
  //         ));
  //       }
  //       postLikeCount++;
  //       setState(() {});

  //       // await likePost(postId: widget.post.activityId.validate()).then((value) {
  //       //   //
  //       // }).catchError((e) {
  //       //   log('Error: ${e.toString()}');
  //       // });
  //     } else {
  //       if (postLikeList.length <= 3) {
  //         postLikeList
  //             .removeWhere((element) => element.userId == appStore.loginUserId);
  //       }
  //       postLikeCount--;
  //       setState(() {});
  //       // await likePost(postId: widget.post.activityId.validate()).then((value) {
  //       //   //
  //       // }).catchError((e) {
  //       //   log('Error: ${e.toString()}');
  //       // });
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // if (widget.count == 0) {
    //   // init();
    //   widget.count = widget.count.validate() + 1;
    // }

    return GestureDetector(
      // onTap: () {
      // SinglePostScreen(postId: widget.post.activityId.validate()).launch(context).then((value) {
      //   if (value ?? false) widget.callback?.call();
      // });
      // },
      // onPanEnd: (s) {
      //   _overlayHandler.removeOverlay(context);
      // },
      // onLongPress: () {
      //   _overlayHandler.insertOverlay(
      //     context,
      //     OverlayEntry(
      //       builder: (context) {
      //         return QuickViewPostWidget(
      //           postModel: widget.post,
      //           isPostLied: isLiked,
      //           onPostLike: () async {
      //             postLike();
      //             widget.callback!.call();
      //           },
      //           pageIndex: index,
      //         );
      //       },
      //     ),
      //   );
      // },
      // onLongPressEnd: (details) {
      //   _overlayHandler.removeOverlay(context);
      // },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              borderRadius: radius(commonRadius), color: context.cardColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  cachedImage(
                    widget.post.author.first.image.validate(),
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ).cornerRadiusWithClipRRect(100),
                  12.width,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.post.author.first.username.validate(),
                            style:
                                boldTextStyle(fontFamily: 'Poppins', size: 16),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ).flexible(flex: 1),
                          // if (widget.post.isUserVerified.validate()) Image.asset(ic_tick_filled, width: 18, height: 18, color: blueTickColor).paddingSymmetric(horizontal: 4),
                        ],
                      ),
                      4.height,
                      Text(convertToAgo(widget.post.created_on.validate()),
                          style: secondaryTextStyle(
                              fontFamily: 'Poppins',
                              size: 12,
                              weight: FontWeight.w500)),
                    ],
                  ).expand(),
                  Theme(
                    data: Theme.of(context).copyWith(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      useMaterial3: false,
                    ),
                    child: PopupMenuButton(
                      enabled: !appStore.isLoading,
                      position: PopupMenuPosition.under,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(commonRadius)),
                      // onSelected: (val) async {
                      //   if (val == 1) {
                      //     showConfirmDialogCustom(
                      //       context,
                      //       onAccept: (c) {
                      //         ifNotTester(() {
                      //           appStore.setLoading(true);

                      //           deletePost(postId: widget.post.activityId.validate()).then((value) {
                      //             appStore.setLoading(false);
                      //             toast(language.postDeleted);
                      //             widget.callback?.call();
                      //             setState(() {});
                      //           }).catchError((e) {
                      //             appStore.setLoading(false);
                      //             toast(e.toString());
                      //           });
                      //         });
                      //       },
                      //       dialogType: DialogType.CONFIRMATION,
                      //       title: language.deletePostConfirmation,
                      //       positiveText: language.remove,
                      //     );
                      //   } else {
                      //     await showModalBottomSheet(
                      //       context: context,
                      //       isScrollControlled: true,
                      //       backgroundColor: Colors.transparent,
                      //       builder: (context) {
                      //         return FractionallySizedBox(
                      //           heightFactor: 0.80,
                      //           child: Column(
                      //             mainAxisSize: MainAxisSize.min,
                      //             children: [
                      //               Container(
                      //                 width: 45,
                      //                 height: 5,
                      //                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.white),
                      //               ),
                      //               8.height,
                      //               Container(
                      //                 decoration: BoxDecoration(
                      //                   color: context.cardColor,
                      //                   borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                      //                 ),
                      //                 child: ShowReportDialog(
                      //                   isPostReport: true,
                      //                   postId: widget.post.activityId.validate(),
                      //                   userId: widget.post.userId.validate(),
                      //                 ),
                      //               ).expand(),
                      //             ],
                      //           ),
                      //         );
                      //       },
                      //     );
                      //   }
                      // },
                      icon: Icon(
                        Icons.more_horiz,
                        color: Color(0xff6F7F92),
                      ),
                      itemBuilder: (context) => <PopupMenuEntry>[
                        // if (widget.post.userId.validate().toString() == appStore.loginUserId)
                        //   PopupMenuItem(
                        //     value: 1,
                        //     child: Text(language.deletePost),
                        //     textStyle: primaryTextStyle(),
                        //   ),
                        // if (widget.post.userId.validate().toString() != appStore.loginUserId)
                        //   PopupMenuItem(
                        //     value: 2,
                        //     child: Text(language.reportPost),
                        //     textStyle: primaryTextStyle(),
                        //   ),
                      ],
                    ),
                  ),
                ],
              ).paddingOnly(left: 8, top: 8, right: 8).onTap(() {
                // MemberProfileScreen(memberId: widget.post.userId.validate()).launch(context);
              }, borderRadius: radius(8)),
              12.height,
              Text(parseHtmlString(widget.post.content.validate()),
                      style: secondaryTextStyle(
                          fontFamily: 'Poppins', weight: FontWeight.w500))
                  .paddingSymmetric(horizontal: 18),
              // if (widget.post.mediaList.validate().isNotEmpty)
              //   PostMediaComponent(
              //     mediaTitle: widget.post.userName.validate(),
              //     mediaType: widget.post.mediaType.validate(),
              //     mediaList: widget.post.mediaList.validate(),
              //     onPageChange: (i) {
              //       index = i;
              //     },
              //   ),
              12.height,
              cachedImage(widget.post.content_url.validate(),
                      fit: BoxFit.cover, height: 260)
                  .cornerRadiusWithClipRRect(10)
                  .paddingSymmetric(horizontal: 16)
                  .center(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      LikeButtonWidget(
                        key: ValueKey(isLiked),
                        onPostLike: widget.post.likedByMe
                            ? () {
                                context
                                    .read<HomeCubit>()
                                    .deleteLike(widget.post.id.toString());
                                isLiked = false;
                              }
                            : () {
                                context
                                    .read<HomeCubit>()
                                    .likePost(widget.post.id.toString());
                                isLiked = true;
                              },
                        isPostLiked:
                            widget.post.likedByMe == true ? true : isLiked,
                      ),
                      Theme(
                        data: Theme.of(context).copyWith(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                        ),
                        child: IconButton(
                          onPressed: () {
                            // if (!appStore.isLoading) {
                            //   CommentScreen(postId: widget.post.activityId.validate()).launch(context).then((value) {
                            //     if (value ?? false) widget.callback?.call();
                            //   });
                            // }
                          },
                          icon: Image.asset(
                            ic_chat,
                            height: 22,
                            width: 22,
                            fit: BoxFit.cover,
                            color: Color(0xff6F7F92),
                          ),
                        ),
                      ),
                      Image.asset(
                        ic_send,
                        height: 22,
                        width: 22,
                        fit: BoxFit.cover,
                        color: Color(0xff6F7F92),
                      ).onTap(() {
                        // if (!appStore.isLoading) {
                        //   String saveUrl = "$DOMAIN_URL/${widget.post.activityId.validate()}";
                        //   Share.share(saveUrl);
                        // }
                      },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      // CommentScreen(postId: widget.post.activityId.validate()).launch(context).then(
                      //   (value) {
                      //     if (value ?? false) widget.callback?.call();
                      //   },
                      // );
                    },
                    child: Text('${widget.post.noOfLikes} ${language.comments}',
                        style: secondaryTextStyle(
                            fontFamily: 'Poppins',
                            size: 12,
                            weight: FontWeight.w500)),
                  ),
                ],
              ).paddingSymmetric(horizontal: 16),
              if (widget.post.likedByPeople.isNotEmpty &&
                  widget.post.likedByPeople
                      .any((element) => element.id != null))
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    child: Divider(
                      color: Color(0xff6F7F92).withOpacity(0.1),
                    )).center(),
              if (widget.post.likedByPeople.isNotEmpty &&
                  widget.post.likedByPeople
                      .any((element) => element.id != null))
                Row(
                  children: [
                    Stack(
                      children:
                          widget.post.likedByPeople.validate().take(3).map(
                        (e) {
                          return Container(
                            width: 24,
                            height: 24,
                            margin: EdgeInsets.only(
                                left: 18 *
                                    widget.post.likedByPeople
                                        .validate()
                                        .indexOf(e)
                                        .toDouble()),
                            child: cachedImage(
                              widget.post.likedByPeople
                                  .validate()[widget.post.likedByPeople
                                      .validate()
                                      .indexOf(e)]
                                  .image
                                  .validate(),
                              fit: BoxFit.cover,
                            ).cornerRadiusWithClipRRect(100),
                          );
                        },
                      ).toList(),
                    ),
                    RichText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: language.likedBy,
                        style: secondaryTextStyle(
                          size: 12,
                          fontFamily: 'Poppins',
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.post.likedByMe
                                ? ' you'
                                : ' ${widget.post.likedByPeople.first.username.validate()}',
                            style: boldTextStyle(
                              size: 12,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          if (widget.post.likedByPeople.length > 1)
                            TextSpan(
                                text: ' And ',
                                style: secondaryTextStyle(
                                  size: 12,
                                  fontFamily: 'Poppins',
                                )),
                          if (widget.post.likedByPeople.length > 1)
                            TextSpan(
                                text: ' ${widget.post.noOfLikes - 1} others',
                                style: boldTextStyle(
                                  size: 12,
                                  fontFamily: 'Poppins',
                                )),
                        ],
                      ),
                    ).paddingAll(8).onTap(() {
                      // PostLikesScreen(postId: widget.post.activityId.validate()).launch(context);
                    },
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent).expand()
                  ],
                ).paddingOnly(
                    left: MediaQuery.of(context).size.width / 7,
                    right: 8,
                    bottom: 8),
            ],
          ),
        ),
      ),
    );
  }
}
