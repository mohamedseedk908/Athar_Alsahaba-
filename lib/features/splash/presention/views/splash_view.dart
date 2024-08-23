import 'package:athar_alsahaba/core/database/cache/cache_helper.dart';
import 'package:athar_alsahaba/core/services/services_locator.dart';
import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/delayed_splash_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisisted =
        getIt<CacheHelper>().getData(key: "isOnBoardingVisisted") ?? false;
    if (isOnBoardingVisisted == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedSplashScreen(context, "/SignIn")
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedSplashScreen(context, "/NavBarWidget")
              : delayedSplashScreen(context, "/SignIn");
    } else {
      delayedSplashScreen(context, "/OnBoardingScreen");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(AppStrings.appName,
              style: CustomTextStyles.pacifico400style64)),
    );
  }
}
