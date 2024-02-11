part of 'login_bloc.dart';

class LoginState {
  final bool isLogged;
  final bool isLoading;

  LoginState({required this.isLogged, required this.isLoading});
}

final class LoginInitial extends LoginState {
  LoginInitial({required super.isLogged, required super.isLoading});
}

class LoginSuccess extends LoginState {
  LoginSuccess({required super.isLogged, required super.isLoading});
}
