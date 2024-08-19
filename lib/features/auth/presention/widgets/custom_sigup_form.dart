import 'package:athar_alsahaba/core/functions/custom_toast.dart';
import 'package:athar_alsahaba/core/functions/navigation.dart';
import 'package:athar_alsahaba/core/utils/app_colors.dart';
import 'package:athar_alsahaba/features/auth/presention/auth/auth_cubit.dart';
import 'package:athar_alsahaba/features/auth/presention/auth/auth_state.dart';
import 'package:athar_alsahaba/features/auth/presention/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_text_form_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState){
        showToast("Account Created Successfully");
        customReplacementNavigation(context, "/HomeView");
        }else if(state is SignUpFailureState)
          {
        showToast(state.errMessage);
          }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.siginUpFprmKey,
          child: Column(
            children: [
              CustomTextFormFField(
                labelText: AppStrings.fristName,
                onChanged: (fristName) {
                  authCubit.fristName = fristName;
                },
              ),
              CustomTextFormFField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  authCubit.lastName = lastName;
                },
              ),
              CustomTextFormFField(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
              ),
              CustomTextFormFField(
                labelText: AppStrings.password,
                obscureText: authCubit.obscurePasswordTextValue,
                suffixIcon: IconButton(
                  onPressed: () {
                    authCubit.obscurePasswordText();
                  },
                  icon: Icon(
                    authCubit.obscurePasswordTextValue==true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const TermsAndCondition(),
              const SizedBox(
                height: 120,
              ),
              state is SignUpLoadingState?CircularProgressIndicator():
              CustomButton(
                color: authCubit.termsAndConditionCheckBoxValue == false
                    ? AppColors.grey
                    : null,
                onPressed: () {
                  if (authCubit.termsAndConditionCheckBoxValue == true) {
                    if (authCubit.siginUpFprmKey.currentState!.validate()) {
                      authCubit.signUpWithEmailAndPassword();
                    }
                  }
                },
                text: AppStrings.signUp,
              ),
            ],
          ),
        );
      },
    );
  }
}
