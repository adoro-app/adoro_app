import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv/choose_categories/choose_categories_page.dart';
import 'package:socialv/main.dart';
import 'package:socialv/network/rest_apis.dart';
import 'package:socialv/screens/auth/screens/sign_in_screen.dart';
import 'package:socialv/screens/dashboard_screen.dart';
import 'package:socialv/screens/post/screens/single_post_screen.dart';

import '../utils/app_constants.dart';

class SplashScreen extends StatefulWidget {
  final int? activityId;

  const SplashScreen({this.activityId});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    setStatusBarColor(Colors.transparent);
    super.initState();
    init();
  }

  Future<void> init() async {
    afterBuildCreated(() {
      appStore.setLanguage(getStringAsync(SharePreferencesKey.LANGUAGE,
          defaultValue: Constants.defaultLanguage));

      int themeModeIndex = getIntAsync(SharePreferencesKey.APP_THEME,
          defaultValue: AppThemeMode.ThemeModeSystem);
      if (themeModeIndex == AppThemeMode.ThemeModeSystem) {
        appStore.toggleDarkMode(
            value:
                MediaQuery.of(context).platformBrightness != Brightness.light,
            isFromMain: true);
      }
    });

    if (await isAndroid12Above()) {
      await 500.milliseconds.delay;
    } else {
      await 2.seconds.delay;
    }

    // if (widget.activityId != null) {
    //   if (appStore.isLoggedIn) {
    //     SinglePostScreen(postId: widget.activityId.validate())
    //         .launch(context, isNewTask: true);
    //   } else {
    //     SignInScreen(activityId: widget.activityId.validate())
    //         .launch(context, isNewTask: true);
    //   }
    // } else if (appStore.isLoggedIn && !isTokenExpire) {
    //   DashboardScreen().launch(context, isNewTask: true);
    // } else {
    //   ChooseCategoriesPage().launch(context);
    //   // SignInScreen().launch(context, isNewTask: true);
    // }
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    setStatusBarColorBasedOnTheme();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xff00FFFF),
                Color(0xffFFC0CB),
                Color(0xffFFFF00),
              ],
              stops: [
                0.1,
                0.6,
                0.9,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: Center(child: SvgPicture.asset('assets/app_name.svg'))));
  }
}
