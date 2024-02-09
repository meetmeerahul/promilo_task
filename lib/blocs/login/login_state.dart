part of 'login_bloc.dart';

class LoginState {
  final bool isLogged;

  const LoginState({required this.isLogged});
}

final class LoginInitial extends LoginState {
  const LoginInitial({
    required super.isLogged,
  });
}
