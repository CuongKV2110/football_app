import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class SignInState extends Equatable {}

class SignInInitial extends SignInState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class SignInLoading extends SignInState {
  SignInLoading();

  @override
  List<Object?> get props => throw UnimplementedError();
}

class SignInSuccess extends SignInState {
  final String? email;
  final String? password;

  SignInSuccess({
    this.email,
    this.password,
  });

  List<Object?> get props => throw UnimplementedError();
}

class SignInError extends SignInState {
  SignInError();
  List<Object?> get props => throw UnimplementedError();
}
