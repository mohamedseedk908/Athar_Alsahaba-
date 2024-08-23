import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
   String?firstName;
   String?lastName;
   String?emailAddress;
   String?password;

   bool?termsAndConditionCheckBoxValue=false;
   bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> sigInFormKey=GlobalKey();
  GlobalKey<FormState> signInFormKey=GlobalKey();
  GlobalKey<FormState> forgotPasswordFormKey=GlobalKey();




  Future<void> signUpWithEmailAndPassword() async{
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUser();
      await verifyEmail();
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
////////////////////////////////////////////////////////////////////////////////
  void updateTerConditionCheckBox({required newvalue}){
    termsAndConditionCheckBoxValue=newvalue;
    emit(TermsAndConditionUpDateState());
  }
////////////////////////////////////////////////////////////////////////////////
  void obscurePasswordText() {
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
      emit(SignInLoadingState());
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
     await verifyEmail();
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
  Future<void> verifyEmail()async{
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }
  //////////////////////////////////////////////////////////////////////////////
  Future<void> resetPasswordWithLink()async{
  try {
    emit(ResetPasswordLoadingState());
    await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
    emit(ResetPasswordSuccessState());
  } on Exception catch (e) {
    emit(ResetPasswordFailureState(errMessage: e.toString()));
  }
}
////////////////////////////////////////////////////////////////////////////////
  Future<void> addUser() async{
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    // Call the user's CollectionReference to add a new user
     await users.add({
      'firstName': firstName, // John Doe
      'lastName': lastName, // Stokes and Sons
      'emailAddress': emailAddress // 42
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

}
