import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSupTitle extends StatelessWidget {
  const ForgotPasswordSupTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Align(
          child: Text(
            "Enter registered email below to receive password reset instrution",
            style: CustomTextStyles.poppins400style12.copyWith(fontSize: 18),
            textAlign:TextAlign.center,
          )),
    );
  }
}
