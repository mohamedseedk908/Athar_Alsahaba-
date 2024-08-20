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

   bool?termsAndConditionCheckBoxValue=false;
   bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> sigInFprmKey=GlobalKey();
  GlobalKey<FormState> siginUpFprmKey=GlobalKey();
  GlobalKey<FormState> ForgotPasswordFormKey=GlobalKey();




  signUpWithEmailAndPassword() async{
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(errMessage:'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(errMessage: 'The account already exists for that email.'));
      }else if(e.code=="invalid-email"){
        emit(SignUpFailureState(errMessage: "The Email Is Invalid"));
      }
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  void updateTerConditionCheckBox({required newvalue}){
    termsAndConditionCheckBoxValue=newvalue;
    emit(TermsAndConditionUpDateState());
  }
////////////////////////////////////////////////////////////////////////////////
  obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }
  /////////////////////////////////////////////////////////////////////////////
  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SigninLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      verifyEmail();
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignInFailureState(errMessage: "The password provided is too weak."));
      } else if (e.code == 'email-already-in-use') {
        emit(SignInFailureState(errMessage: "The account already exists for that email."));
      }
      else {
        (emit(SignInFailureState(errMessage: e.code)));
      }
    } catch (e) {
      emit(SignInFailureState(errMessage: e.toString()));
    }
  }
  //////////////////////////////////////////////////////////////////////////////
   verifyEmail()async{
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }
  //////////////////////////////////////////////////////////////////////////////
resetPasswordWithLink()async{
  try {
    emit(ResetPasswordLoadingState());
    await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
    emit(ResetPasswordSuccessState());
  } on Exception catch (e) {
    emit(ResetPasswordFailureState(errMessage: e.toString()));
  }
}
}
