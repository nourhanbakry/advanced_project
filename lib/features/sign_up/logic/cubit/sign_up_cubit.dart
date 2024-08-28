import 'package:advanced_project/features/sign_up/data/models/sign_up_request_body.dart';
import 'package:advanced_project/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:advanced_project/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super( const SignUpState.signuoInitial());

  final globalKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> emitSignUpStates() async {
    emit(const SignUpState.signupLoading());

    final response = await _signUpRepo.signUp(SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text,
        passwordConfirmation: confirmPasswordController.text,
        gender: 0));
    response.when(
      success: (signUpResponce) => emit(SignUpState.signUpSuccess(signUpResponce)),
      failure: (message) => emit(SignUpState.signUpFailure(message: message.message)),
    );
  }
}
