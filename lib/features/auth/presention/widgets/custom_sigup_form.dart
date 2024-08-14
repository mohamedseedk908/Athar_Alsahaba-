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
      listener: (context, state) {},
      builder: (context, state) {
        return Form(child: Column(
          children: [
             CustomTextFormFField(labelText: AppStrings.fristName,
            onChanged: (fristName){BlocProvider.of<AuthCubit>(context).fristName=fristName;},
            ),
             CustomTextFormFField(labelText: AppStrings.lastName,
               onChanged: (lastName){BlocProvider.of<AuthCubit>(context).lastName=lastName;},
             ),
             CustomTextFormFField(labelText: AppStrings.emailAddress,
               onChanged: (emailAddress){BlocProvider.of<AuthCubit>(context).emailAddress=emailAddress;},
            ),
             CustomTextFormFField(labelText: AppStrings.password,
               onChanged: (password){BlocProvider.of<AuthCubit>(context).password=password;},
             ),
            const TermsAndCondition(),
            const SizedBox(height: 120,),
            CustomButton(onPressed: () {
              BlocProvider.of<AuthCubit>(context).signUpWithEmailAndPassword();
            }, text: AppStrings.signUp,),
          ],
        ),
        );
      },
    );
  }
}