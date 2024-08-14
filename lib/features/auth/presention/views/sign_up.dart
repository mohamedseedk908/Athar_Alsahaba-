import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_have_an_acunt_widget.dart';
import '../widgets/custom_sigup_form.dart';
import '../widgets/wecome_text_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152,),),
            SliverToBoxAdapter(child: WelcomeTextWidget(text: AppStrings.welcome),),
            SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child: CustomSignUpForm(),),
            SliverToBoxAdapter(child: SizedBox(height: 16,),),
            SliverToBoxAdapter(child:HaveAnAcountWidget(text1: AppStrings.alreadyHaveAnAccount,text2: AppStrings.signUp,)),
          ],
        ),
      ),
    );
  }
}


