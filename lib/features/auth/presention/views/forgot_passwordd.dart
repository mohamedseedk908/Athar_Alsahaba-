import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:athar_alsahaba/features/auth/presention/widgets/custom_forgot_password_form.dart';
import 'package:athar_alsahaba/features/auth/presention/widgets/wecome_text_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/forgot_password_image.dart';
import '../widgets/forgot_password_suptitle.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 108,
            ),
          ),
           SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.forgotPassword),
          ),
           SliverToBoxAdapter(
            child:  SizedBox(
              height: 40,
            ),
          ),
            SliverToBoxAdapter(
            child: ForgotPasswordImage(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 40,),),
          SliverToBoxAdapter(
            child:  ForgotPasswordSupTitle(),
          ),
          SliverToBoxAdapter(child: CustomForgotPasswordForm(),)
        ],
      ),
    );
  }
}

