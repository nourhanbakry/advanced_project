import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:advanced_project/core/widgets/app_text_button.dart';
import 'package:advanced_project/features/login/logic/cubit/login_cubit.dart';
import 'package:advanced_project/features/login/ui/widgets/do_not_have_account_text.dart';
import 'package:advanced_project/features/login/ui/widgets/email_and_password.dart';
import 'package:advanced_project/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:advanced_project/features/login/ui/widgets/terms_and_condtions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpacing(8),
                Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
                    style: TextStyles.font14GreyRegular),
                verticalSpacing(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpacing(24),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text("Forgot Password?",
                            style: TextStyles.font14BlueRegular)),
                    verticalSpacing(40),
                    AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteBold,
                        onPressed: () {
                          validateAndDoLogin(context);
                        }),
                    verticalSpacing(16),
                    const TermsAndCondtionsText(),
                    verticalSpacing(60),
                    const DonotHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().globalKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}




//   void validateAndDoLogin(BuildContext context) {
//     if (context.read<LoginCubit>().globalKey.currentState!.validate()) {
//       context.read<LoginCubit>().emitLoginStates(LoginRequestBody(
//           email: context.read<LoginCubit>().emailController.text,
//           password: context.read<LoginCubit>().passwordController.text));
//     }
//   }
// }
