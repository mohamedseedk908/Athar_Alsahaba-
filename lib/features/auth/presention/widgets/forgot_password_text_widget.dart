import 'package:athar_alsahaba/core/functions/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class ForgotPasswordTextWidget extends StatelessWidget {
  const ForgotPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        customReplacementNavigation(context, "/ForgotPassword");
      },
      child: Align(
        alignment:Alignment.topRight,
        child: Text(
          AppStrings.forgotPassword,
          style: CustomTextStyles.poppins500style24.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}

