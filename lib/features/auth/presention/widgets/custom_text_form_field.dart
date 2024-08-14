import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';

class CustomTextFormFField extends StatelessWidget {
  const CustomTextFormFField({super.key, required this.labelText,  this.onChanged,  this.onFieldSubmitted, });
  final String labelText;
  final Function (String)? onChanged;
  final Function (String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8.0,top: 24),
      child: TextFormField(
        onChanged:onChanged,
            onFieldSubmitted: onFieldSubmitted,
            decoration:InputDecoration(
            labelText:labelText,
            labelStyle: CustomTextStyles.poppins500style24,
            border: getBorderStyle(),
            enabledBorder: getBorderStyle(),
            focusedBorder:getBorderStyle() ),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle(){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.grey),
  );
}