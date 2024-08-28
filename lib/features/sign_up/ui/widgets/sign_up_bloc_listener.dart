import 'package:advanced_project/core/helper/exctensions.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:advanced_project/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:advanced_project/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          current is SignUpLoading ||
          current is SignUpFailure ||
          current is SignUpSuccess,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.mainBlue),
              ),
            );
          },
          signUpSuccess: (loginResponce) {
            context.pop();
            setupSucessState(context);
          },
          signUpFailure: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupSucessState(BuildContext context) {
      showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey,
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
              child:  const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon: const Icon(Icons.error, color: Colors.red, size: 32),
              content: Text(error, style: TextStyles.font14DarkBlueMedium),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: Text("Got it", style: TextStyles.font14BlueSemiBold))
              ],
            ));
  }
}
