import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
   String?fristName;
   String?lastName;
   String?emailAddress;
   String?password;
   GlobalKey<FormState> siginUpFprmKey=GlobalKey();
   bool?termsAndConditionCheckBoxValue=false;
   bool? obscurePasswordTextValue = true;



  signUpWithEmailAndPassword() async{
    try {
      emit(SignUpLoadingState());
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(errMessage:'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(errMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  void updateTerConditionCheckBox({required newvalue}){
    termsAndConditionCheckBoxValue=newvalue;
    emit(TermsAndConditionUpDateState());
  }

  obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }


  
}
