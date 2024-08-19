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