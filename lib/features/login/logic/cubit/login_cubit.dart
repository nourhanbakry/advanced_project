import 'package:advanced_project/features/login/data/models/login_request_body.dart';
import 'package:advanced_project/features/login/data/repos/login_repo.dart';
import 'package:advanced_project/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
    final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());


  final globalKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginStates(LoginRequestBody loginRequestBody) async{
    emit(const LoginState.loading());
   final responace=await  _loginRepo.login(loginRequestBody);
        responace.when(
          success: (loginResponce) => emit(LoginState.success(loginResponce)),
          failure: (message) => emit(LoginState.failure(message: message.message)),
        );
  }
}
