import 'package:flutter/cupertino.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class SignUpLoadingState extends AuthState {}
final class SignUpSuccessState extends AuthState {}
final class SignUpFailureState extends AuthState {
  final String errMessage;
  SignUpFailureState({required this.errMessage});
}

final class TermsAndConditionUpDateState extends AuthState {}
final class ObscurePasswordTextUpdateState extends AuthState{}

final class SignInLoadingState extends AuthState {}
final class SignInSuccessState extends AuthState {}
final class SignInFailureState extends AuthState {
  final String errMessage;
  SignInFailureState({required this.errMessage});
}


final class ResetPasswordLoadingState extends AuthState {}
final class ResetPasswordSuccessState extends AuthState {}
final class ResetPasswordFailureState extends AuthState {
  final String errMessage;
  ResetPasswordFailureState({required this.errMessage});
}