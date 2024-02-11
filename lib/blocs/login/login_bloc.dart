import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:promilo_task/api/login_api.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial(isLoading: false, isLogged: false)) {
    on<LoginEvent>((event, emit) {
      emit(LoginState(isLogged: false, isLoading: true));
    });

    on<LoginCheckEvent>((event, emit) async {
      //  emit(const LoginState(isLogged: false, isPressed: true));

      String status = await LoginApi.login(event.email, event.password);

      if (status == "Success") {
        print("success");
        emit(LoginSuccess(isLogged: true, isLoading: false));
      } else {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(event.ctx).showSnackBar(const SnackBar(
          content: Text("Invalid Credentials"),
          backgroundColor: Colors.red,
        ));
        emit(LoginState(isLogged: false, isLoading: false));
      }
    });
  }
}
