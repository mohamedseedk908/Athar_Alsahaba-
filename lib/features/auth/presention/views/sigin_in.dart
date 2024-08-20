import 'package:athar_alsahaba/core/functions/navigation.dart';
import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:athar_alsahaba/features/auth/presention/widgets/custom_have_an_acunt_widget.dart';
import 'package:athar_alsahaba/features/auth/presention/widgets/wecome_text_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_sign_in.dart';
import '../widgets/welcom_bannar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: WelcomBannar(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 32,
            ),
          ),
          SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 102,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomSignInpForm(),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: HaveAnAcountWidget(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: () {
                customReplacementNavigation(context, "/SignUp");
              },
            ),
          )
        ],
      ),
    );
  }
}
