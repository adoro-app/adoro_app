import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:socialv/app_theme.dart';
import 'package:socialv/choose_categories/choose_categories_page.dart';
import 'package:socialv/choose_categories/cubit/choose_meme_categories_cubit.dart';
import 'package:socialv/language/app_localizations.dart';
import 'package:socialv/language/languages.dart';
import 'package:socialv/models/common_models.dart';
import 'package:socialv/screens/auth/screens/otp_screen.dart';
import 'package:socialv/screens/auth/screens/sign_in_screen.dart';
import 'package:socialv/screens/dashboard_screen.dart';
import 'package:socialv/screens/splash_screen.dart';
import 'package:socialv/service_locator.dart';
import 'package:socialv/store/app_store.dart';
import 'package:socialv/utils/app_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auth/cubit/auth_cubit.dart';

AppStore appStore = AppStore();

late BaseLanguage language;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  await initialize(aLocaleLanguageList: languageList());

  Firebase.initializeApp().then((value) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    MobileAds.instance.initialize();
  }).catchError((e) {
    log('Error: ${e.toString()}');
  });

  defaultRadius = 32.0;
  defaultAppButtonRadius = 12;

  await OneSignal.shared.setAppId(ONESIGNAL_APP_ID);
  OneSignal.shared.setNotificationOpenedHandler((openedResult) {
    //
  });

  final status = await OneSignal.shared.getDeviceState();
  setValue(SharePreferencesKey.ONE_SIGNAL_PLAYER_ID, status?.userId.validate());

  OneSignal.shared.setNotificationWillShowInForegroundHandler(
      (OSNotificationReceivedEvent event) {
    event.complete(event.notification);
  });
  exitFullScreen();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    afterBuildCreated(() async {
      int themeModeIndex = getIntAsync(SharePreferencesKey.APP_THEME,
          defaultValue: AppThemeMode.ThemeModeSystem);

      if (themeModeIndex == AppThemeMode.ThemeModeLight) {
        appStore.toggleDarkMode(value: false, isFromMain: true);
      } else {
        appStore.toggleDarkMode(value: true, isFromMain: true);
      }

      await appStore
          .setLoggedIn(getBoolAsync(SharePreferencesKey.IS_LOGGED_IN));
      if (appStore.isLoggedIn) {
        appStore.setToken(getStringAsync(SharePreferencesKey.TOKEN));
        appStore.setVerificationStatus(
            getStringAsync(SharePreferencesKey.VERIFICATION_STATUS));
        appStore.setNonce(getStringAsync(SharePreferencesKey.NONCE));
        appStore.setLoginEmail(getStringAsync(SharePreferencesKey.LOGIN_EMAIL));
        appStore.setLoginName(
            getStringAsync(SharePreferencesKey.LOGIN_DISPLAY_NAME));
        appStore.setLoginFullName(
            getStringAsync(SharePreferencesKey.LOGIN_FULL_NAME));
        appStore
            .setLoginUserId(getStringAsync(SharePreferencesKey.LOGIN_USER_ID));
        appStore.setLoginAvatarUrl(
            getStringAsync(SharePreferencesKey.LOGIN_AVATAR_URL));
      }

      if (getMemberListPref().isNotEmpty)
        appStore.recentMemberSearchList.addAll(getMemberListPref());
      if (getGroupListPref().isNotEmpty)
        appStore.recentGroupsSearchList.addAll(getGroupListPref());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BlocListener<AuthCubit, AuthState>(
        bloc: sl.get<AuthCubit>(),
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            unauthenticated: () {
              // navigatorKey.currentState?.pushAndRemoveUntil(
              //   CupertinoPageRoute(
              //     builder: (context) => SignInScreen(),
              //   ),
              //   (_) => false,
              // );
              navigatorKey.currentState?.pushAndRemoveUntil(
                CupertinoPageRoute(
                  builder: (context) => BlocProvider(
                    create: (context) => ChooseMemeCategoriesCubit(apiService: sl()),
                    child: ChooseCategoriesPage(),
                  ),
                ),
                (_) => false,
              );
            },
            authenticated: () {
              navigatorKey.currentState?.pushAndRemoveUntil(
                CupertinoPageRoute(
                  builder: (context) => DashboardScreen(),
                ),
                (_) => false,
              );
            },
            // otpSent: () {
            //   navigatorKey.currentState?.push(
            //     CupertinoPageRoute(
            //       builder: (context) => OtpScreen(),
            //     ),
            //   );
            // },
          );
        },
        child: MaterialApp(
          navigatorKey: navigatorKey,
          title: APP_NAME,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appStore.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: SplashScreen(),
          supportedLocales: LanguageDataModel.languageLocales(),
          localizationsDelegates: [
            AppLocalizations(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) => locale,
          locale: Locale(appStore.selectedLanguage
              .validate(value: Constants.defaultLanguage)),
          // onGenerateRoute: (settings) {
          //   String pathComponents = settings.name!.split('/').last;

          //   if (pathComponents.isInt) {
          //     return MaterialPageRoute(
          //       builder: (context) {
          //         return SplashScreen(activityId: pathComponents.toInt());
          //       },
          //     );
          //   } else {
          //     return MaterialPageRoute(builder: (_) => SplashScreen());
          //   }
          // },
        ),
      ),
    );
  }
}
