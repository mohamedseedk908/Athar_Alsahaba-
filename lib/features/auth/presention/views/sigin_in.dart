import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../widgets/wecome_text_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: WelcomeTextWidget( text:AppStrings.welcome),),
        ],
      ),
    );
  }
}
