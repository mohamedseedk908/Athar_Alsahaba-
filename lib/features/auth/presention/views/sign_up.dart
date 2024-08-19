import 'package:athar_alsahaba/core/functions/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_have_an_acunt_widget.dart';
import '../widgets/custom_sigup_form.dart';
import '../widgets/wecome_text_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 152,
              ),
            ),
            const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomSignUpForm(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
                child: HaveAnAcountWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: () {
                customReplacementNavigation(context, "/SignIn");
              },
            )),
          ],
        ),
      ),
    );
  }
}
