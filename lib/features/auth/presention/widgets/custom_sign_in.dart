import 'package:athar_alsahaba/core/utils/app_colors.dart';
import 'package:athar_alsahaba/features/auth/presention/auth/auth_cubit.dart';
import 'package:athar_alsahaba/features/auth/presention/auth/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/functions/custom_toast.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_text_form_field.dart';
import 'forgot_password_text_widget.dart';

class CustomSignInpForm extends StatelessWidget {
  const CustomSignInpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          FirebaseAuth.instance.currentUser!.emailVerified?
          customReplacementNavigation(context, "/NavBarWidget"):showToast("please verify your account !");
        } else if (state is SignInFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.sigInFormKey,
          child: Column(
            children: [
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
                    authCubit.obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                ),
                onChanged: (password) {
                  authCubit.password = password;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              const ForgotPasswordTextWidget(),
              const SizedBox(
                height: 120,
              ),
              state is SignInLoadingState
                  ? const CircularProgressIndicator()
                  : CustomButton(
                      color: AppColors.primaryColor,
                      onPressed: ()async{
                        if (authCubit.sigInFormKey.currentState!.validate()) {
                         await authCubit.signInWithEmailAndPassword();
                        }
                      },
                      text: AppStrings.signIn,
                    ),
            ],
          ),
        );
      },
    );
  }
}
