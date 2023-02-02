import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/auth/cubit/auth_cubit.dart';
import 'package:socialv/choose_categories/cubit/choose_meme_categories_cubit.dart';
import 'package:socialv/main.dart';
import 'package:socialv/models/dashboard_api_response.dart';
import 'package:socialv/network/rest_apis.dart';
import 'package:socialv/screens/fragments/forums_fragment.dart';
import 'package:socialv/screens/fragments/home_fragment.dart';
import 'package:socialv/screens/fragments/notification_fragment.dart';
import 'package:socialv/screens/fragments/profile_fragment.dart';
import 'package:socialv/screens/fragments/search_fragment.dart';
import 'package:socialv/screens/post/cubit/createpost_cubit.dart';
import 'package:socialv/screens/post/screens/add_post_screen.dart';
import 'package:socialv/screens/profile/cubit/profile_cubit.dart';
import 'package:socialv/screens/profile/screens/profile_screen.dart';
import 'package:socialv/screens/shop/components/list_tile_component.dart';
import 'package:socialv/screens/shop/screens/initial_shop_screen.dart';
import 'package:socialv/utils/app_constants.dart';

import '../service_locator.dart';

int selectedIndex = 0;

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

List<VisibilityOptions>? visibilities;
List<ReportType>? reportTypes;

class _DashboardScreenState extends State<DashboardScreen>
    with TickerProviderStateMixin {
  bool hasUpdate = false;
  late AnimationController _animationController;

  ScrollController _controller = ScrollController();

  late TabController tabController;

  bool onAnimationEnd = true;

  List<Widget> appFragments = [];

  @override
  void initState() {
    _animationController = BottomSheet.createAnimationController(this);
    _animationController.duration = const Duration(milliseconds: 500);
    _animationController.drive(CurveTween(curve: Curves.easeOutQuad));

    super.initState();
    tabController = TabController(length: 5, vsync: this);
    appFragments.addAll([
      HomeFragment(controller: _controller),
      SearchFragment(controller: _controller),
      ForumsFragment(controller: _controller),
      NotificationFragment(controller: _controller),
      ProfileFragment(controller: _controller),
    ]);

    _controller.addListener(() {
      //
    });

    selectedIndex = 0;
    setState(() {});

    getDetails();
    getNonce().then((value) {
      appStore.setNonce(value.storeApiNonce.validate());
    }).catchError(onError);

    setStatusBarColorBasedOnTheme();
  }

  Future<void> getDetails() async {
    await getDashboardDetails().then((value) {
      appStore.setNotificationCount(value.notificationCount.validate());
      appStore.setVerificationStatus(value.verificationStatus.validate());
      visibilities = value.visibilities.validate();
      reportTypes = value.reportTypes.validate();
    }).catchError(onError);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthCubit>().state.user;

    return DoublePressBackWidget(
      onWillPop: () {
        if (selectedIndex != 0) {
          selectedIndex = 0;
          tabController.index = 0;
          setState(() {});
          return Future.value(true);
        }
        return Future.value(true);
      },
      child: RefreshIndicator(
        onRefresh: () {
          if (tabController.index == 0) {
            LiveStream().emit(GetUserStories);
            LiveStream().emit(OnAddPost);
          } else if (tabController.index == 2) {
            LiveStream().emit(RefreshForumsFragment);
          } else if (tabController.index == 3) {
            LiveStream().emit(RefreshNotifications);
          } else if (tabController.index == 4) {
            LiveStream().emit(OnAddPostProfile);
          }

          return Future.value(true);
        },
        color: context.primaryColor,
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Align(
                      child: Icon(Icons.arrow_back),
                      alignment: Alignment.topLeft,
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 33,
                    backgroundImage: user?.image == null
                        ? Image.asset(profile_img).image
                        : NetworkImage(
                            user!.image!,
                          ),
                  ),
                  title: Text(user?.beneficiaryName ?? '',
                      style: boldTextStyle(size: 17, weight: FontWeight.w600)),
                  subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(user?.username ?? '',
                          style: secondaryTextStyle(weight: FontWeight.w500))),
                ),
                ListTileComponent(
                    title: "Notification", icon: ic_notification_svg),
                ListTileComponent(title: "Result", icon: ic_result),
                ListTileComponent(
                  title: "Messages",
                  icon: ic_messages,
                ),
                ListTileComponent(title: "Wallet", icon: ic_wallet),
                ListTileComponent(title: "Refer & Earn", icon: ic_refer_earn),
                ListTileComponent(title: "Support", icon: ic_support),
                ListTileComponent(title: "Settings", icon: ic_settings),
              ],
            ),
          ),
          body: CustomScrollView(
            controller: _controller,
            slivers: <Widget>[
              Theme(
                data: ThemeData(useMaterial3: false),
                child: SliverAppBar(
                  iconTheme: IconThemeData(color: Colors.black),
                  forceElevated: true,
                  elevation: 0,
                  expandedHeight: 110,
                  floating: true,
                  pinned: true,
                  backgroundColor: context.scaffoldBackgroundColor,
                  titleSpacing: 0,
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Image.asset(APP_LOGO,
                        width: MediaQuery.of(context).size.width * 0.3),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        AddPostScreen().launch(context).then((value) {
                          if (value ?? false) {
                            selectedIndex = 0;
                            tabController.index = 0;
                            setState(() {});
                          }
                        });
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      icon: Image.asset(ic_search,
                          height: 22,
                          width: 22,
                          fit: BoxFit.fitWidth,
                          color: context.iconColor),
                    ),
                    4.width,
                    Image.asset(ic_message,
                            height: 24,
                            width: 24,
                            fit: BoxFit.fitWidth,
                            color: Colors.black)
                        .onTap(() {
                      InitialShopScreen().launch(context);
                    },
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent),
                    8.width,
                    // Observer(
                    //   builder: (_) => IconButton(
                    //     highlightColor: Colors.transparent,
                    //     splashColor: Colors.transparent,
                    //     onPressed: () {
                    //       showModalBottomSheet(
                    //         context: context,
                    //         isScrollControlled: true,
                    //         backgroundColor: Colors.transparent,
                    //         transitionAnimationController: _animationController,
                    //         builder: (context) {
                    //           return FractionallySizedBox(
                    //             heightFactor: 0.93,
                    //             child: Column(
                    //               mainAxisSize: MainAxisSize.min,
                    //               children: [
                    //                 Container(
                    //                   width: 45,
                    //                   height: 5,
                    //                   decoration: BoxDecoration(
                    //                       borderRadius:
                    //                           BorderRadius.circular(16),
                    //                       color: Colors.white),
                    //                 ),
                    //                 8.height,
                    //                 Container(
                    //                   decoration: BoxDecoration(
                    //                     color: context.cardColor,
                    //                     borderRadius: BorderRadius.only(
                    //                         topLeft: Radius.circular(16),
                    //                         topRight: Radius.circular(16)),
                    //                   ),
                    //                   child: UserDetailBottomSheetWidget(
                    //                     callback: () {
                    //                       //mPage = 1;
                    //                       //future = getPostList();
                    //                     },
                    //                   ),
                    //                 ).expand(),
                    //               ],
                    //             ),
                    //           );
                    //         },
                    //       );
                    //     },
                    //     icon: cachedImage(appStore.loginAvatarUrl,
                    //             height: 30, width: 30, fit: BoxFit.cover)
                    //         .cornerRadiusWithClipRRect(15),
                    //   ),
                    // ),
                  ],
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    controller: tabController,
                    onTap: (val) async {
                      selectedIndex = val;
                      setState(() {});
                    },
                    tabs: [
                      selectedIndex == 0
                          ? TabBarWidget(text: 'Relevant')
                          : Text('Relevant',
                              style: secondaryTextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff6F7F92),
                                  weight: FontWeight.w600)),
                      selectedIndex == 1
                          ? TabBarWidget(text: 'Trending')
                          : Text('Trending',
                              style: secondaryTextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff6F7F92),
                                  weight: FontWeight.w600)),
                      selectedIndex == 2
                          ? TabBarWidget(text: 'Fresh')
                          : Text('Fresh',
                              style: secondaryTextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff6F7F92),
                                  weight: FontWeight.w600)),
                      selectedIndex == 3
                          ? TabBarWidget(text: 'News')
                          : Text('News',
                              style: secondaryTextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff6F7F92),
                                  weight: FontWeight.w600)),

                      selectedIndex == 4
                          ? TabBarWidget(text: 'dank')
                          : Text('dank',
                              style: secondaryTextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xff6F7F92),
                                  weight: FontWeight.w600)),

                      // Tooltip(
                      //   richMessage: TextSpan(
                      //       text: language.home,
                      //       style: secondaryTextStyle(color: Colors.white)),
                      //   child: Image.asset(
                      //     selectedIndex == 0 ? ic_home_selected : ic_home,
                      //     height: 24,
                      //     width: 24,
                      //     fit: BoxFit.cover,
                      //     color: selectedIndex == 0
                      //         ? context.primaryColor
                      //         : context.iconColor,
                      //   ).paddingSymmetric(vertical: 11),
                      // ),
                      // Tooltip(
                      //   richMessage: TextSpan(
                      //       text: language.searchHere,
                      //       style: secondaryTextStyle(color: Colors.white)),
                      //   child: Image.asset(
                      //     selectedIndex == 1 ? ic_search_selected : ic_search,
                      //     height: 24,
                      //     width: 24,
                      //     fit: BoxFit.cover,
                      //     color: selectedIndex == 1
                      //         ? context.primaryColor
                      //         : context.iconColor,
                      //   ).paddingSymmetric(vertical: 11),
                      // ),
                      // Tooltip(
                      //   richMessage: TextSpan(
                      //       text: language.forums,
                      //       style: secondaryTextStyle(color: Colors.white)),
                      //   child: Image.asset(
                      //     selectedIndex == 2 ? ic_forum_filled : ic_forum,
                      //     height: 44,
                      //     width: 52,
                      //     fit: BoxFit.cover,
                      //     color: selectedIndex == 2
                      //         ? context.primaryColor
                      //         : context.iconColor,
                      //   ),
                      // ),
                      // Tooltip(
                      //   richMessage: TextSpan(
                      //       text: language.notifications,
                      //       style: secondaryTextStyle(color: Colors.white)),
                      //   child: selectedIndex == 3
                      //       ? Image.asset(ic_notification_selected,
                      //               height: 24, width: 24, fit: BoxFit.cover)
                      //           .paddingSymmetric(vertical: 11)
                      //       : Observer(
                      //           builder: (_) => Stack(
                      //             clipBehavior: Clip.none,
                      //             alignment: Alignment.center,
                      //             children: [
                      //               Image.asset(
                      //                 ic_notification,
                      //                 height: 24,
                      //                 width: 24,
                      //                 fit: BoxFit.cover,
                      //                 color: context.iconColor,
                      //               ).paddingSymmetric(vertical: 11),
                      //               if (appStore.notificationCount != 0)
                      //                 Positioned(
                      //                   right: appStore.notificationCount
                      //                               .toString()
                      //                               .length >
                      //                           1
                      //                       ? -6
                      //                       : -4,
                      //                   top: 3,
                      //                   child: Container(
                      //                     padding: EdgeInsets.all(appStore
                      //                                 .notificationCount
                      //                                 .toString()
                      //                                 .length >
                      //                             1
                      //                         ? 4
                      //                         : 6),
                      //                     decoration: BoxDecoration(
                      //                         color: appColorPrimary,
                      //                         shape: BoxShape.circle),
                      //                     child: Text(
                      //                       appStore.notificationCount
                      //                           .toString(),
                      //                       style: boldTextStyle(
                      //                           color: Colors.white,
                      //                           size: 10,
                      //                           weight: FontWeight.w700,
                      //                           letterSpacing: 0.7),
                      //                       textAlign: TextAlign.center,
                      //                     ),
                      //                   ),
                      //                 ),
                      //             ],
                      //           ),
                      //         ),
                      // ),
                      // Tooltip(
                      //   richMessage: TextSpan(
                      //       text: language.profile,
                      //       style: secondaryTextStyle(
                      //         color: Colors.white,
                      //       )),
                      //   child: Image.asset(
                      //     selectedIndex == 4 ? ic_profile_filled : ic_profile,
                      //     height: 24,
                      //     width: 24,
                      //     fit: BoxFit.cover,
                      //     color: selectedIndex == 4
                      //         ? context.primaryColor
                      //         : context.iconColor,
                      //   ).paddingSymmetric(vertical: 11),
                      // ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, i) {
                    return appFragments[tabController.index];
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xff00FFFF),
                Color(0xffFFC0CB),
                Color(0xffFFFF00),
              ],
              tileMode: TileMode.clamp,
              stops: [
                0.0,
                0.5,
                1,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(5)),
      child: Text(text,
          style: secondaryTextStyle(
              fontFamily: 'Poppins',
              weight: FontWeight.w600,
              color: Colors.white)),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List _screens = [
    DashboardScreen(),
    BlocProvider(
      create: (BuildContext context) => CreatepostCubit(sl()),
      child: AddPostScreen(),
    ),
    ProfileScreen(),
    ProfileScreen(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 2.0),
          )
        ]),
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Material(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  splashFactory: InkRipple.splashFactory,
                  onTap: () => _updateIndex(0),
                  child: Image.asset(ic_home_box,
                      height: 24, width: 24, fit: BoxFit.cover)),
              InkWell(
                splashFactory: InkRipple.splashFactory,
                onTap: () => _updateIndex(1),
                child: Image.asset(ic_plus_circle,
                    height: 24, width: 24, fit: BoxFit.cover),
              ),
              InkWell(
                  splashFactory: InkRipple.splashFactory,
                  onTap: () => _updateIndex(2),
                  child: Image.asset(ic_rank, fit: BoxFit.cover)),
              InkWell(
                splashFactory: InkRipple.splashFactory,
                onTap: () => _updateIndex(3),
                child: Image.asset(ic_user,
                    color: Colors.black,
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover),
              ),
            ],
          ),
        ),
      ),
      body: _screens[_currentIndex],
    );
  }
}
