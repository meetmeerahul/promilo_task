part of 'login_bloc.dart';

class LoginEvent {}

class LoginCheckEvent extends LoginEvent {
  final String email;
  final String password;
  final BuildContext ctx;

  LoginCheckEvent(
      {required this.email, required this.password, required this.ctx});
}
