import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: CustomTextStyles.poppins400style20,);
  }
}
