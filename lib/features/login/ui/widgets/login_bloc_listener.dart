import 'package:advanced_project/core/helper/exctensions.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Failure || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(color: ColorsManager.mainBlue),
              ),
            );
          },
          success: (loginResponce) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          failure: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              icon:
                  const Icon(Icons.error, color: Colors.red, size: 32),
              content:
                  Text(error, style: TextStyles.font14DarkBlueMedium),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: Text("Got it",
                        style: TextStyles.font14BlueSemiBold))
              ],
            ));
  }
}
