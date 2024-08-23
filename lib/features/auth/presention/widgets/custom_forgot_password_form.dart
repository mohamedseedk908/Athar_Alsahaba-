import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/functions/custom_toast.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../auth/auth_cubit.dart';
import '../auth/auth_state.dart';
import 'custom_text_form_field.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if(state is ResetPasswordSuccessState){
          showToast("Check Your Email To Reset Your Password");
          customReplacementNavigation(context, "/SignIn");
        }else if(state is ResetPasswordFailureState){
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.forgotPasswordFormKey,
            child: Column(
              children: [
                CustomTextFormFField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                const SizedBox(height: 129,),
                state is ResetPasswordLoadingState
                    ? const CircularProgressIndicator()
                    : CustomButton(
                  color: AppColors.primaryColor,
                  onPressed: () async {
                    if (authCubit.forgotPasswordFormKey.currentState!.validate()) {
                     await authCubit.resetPasswordWithLink();
                    }
                  },
                  text: AppStrings.sendResetPasswordLink,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

