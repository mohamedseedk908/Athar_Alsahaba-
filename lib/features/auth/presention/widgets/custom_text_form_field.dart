import 'package:athar_alsahaba/core/utils/app_text_style.dart';
import 'package:athar_alsahaba/features/auth/presention/auth/auth_cubit.dart';
import 'package:athar_alsahaba/features/auth/presention/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_colors.dart';

class CustomTextFormFField extends StatelessWidget {
  CustomTextFormFField(
      {super.key, required this.labelText, this.onChanged, this.onFieldSubmitted, this.suffixIcon, this.obscureText,});

  final String labelText;
  final Function (String)? onChanged;
  final Function (String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "This Field is Required";
              } else {
                return null;
              }
            },
            onChanged: onChanged,
            obscuringCharacter: '*',
            onFieldSubmitted: onFieldSubmitted,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              suffixIcon:suffixIcon,
              labelText: labelText,
              labelStyle: CustomTextStyles.poppins500style24,
              border: getBorderStyle(),
              enabledBorder: getBorderStyle(),
              focusedBorder: getBorderStyle(),
            ),
          ),
        );
      },
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(4),
    borderSide: BorderSide(color: AppColors.grey),
  );
}