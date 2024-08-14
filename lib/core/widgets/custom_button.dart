import 'package:athar_alsahaba/core/utils/app_colors.dart';
import 'package:athar_alsahaba/core/utils/app_strings.dart';
import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.color, this.text,  this.onPressed});
  final Color? color;
  final String? text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed:onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text ?? AppStrings.next,
          style: CustomTextStyles.poppins300style16
              .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
