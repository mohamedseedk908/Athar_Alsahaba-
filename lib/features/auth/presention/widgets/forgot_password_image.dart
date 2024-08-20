import 'package:flutter/material.dart';
import '../../../../core/utils/app_assets.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(Assets.imagesForgotPassword),
      height: 235,
      width: 235,
    );
  }
}