import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:advanced_project/core/widgets/app_text_button.dart';
import 'package:advanced_project/features/login/ui/widgets/terms_and_condtions_text.dart';
import 'package:advanced_project/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:advanced_project/features/sign_up/ui/widgets/already_have_account_text.dart';
import 'package:advanced_project/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:advanced_project/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                Text("Create Account", style: TextStyles.font24BlueBold),
                verticalSpacing(8),
                Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
                    style: TextStyles.font14GreyRegular),
                verticalSpacing(36),
                Column(
                  children: [

                    const SignupForm(),
                    verticalSpacing(40),
                    AppTextButton(
                        buttonText: "Create Account",
                        textStyle: TextStyles.font16WhiteBold,
                        onPressed: () {
                          validateAndSignUp(context);
                        }),
                    verticalSpacing(16),
                    const TermsAndCondtionsText(),
                    verticalSpacing(60),
                    const AlreadyHaveAccountText(),
                    const SignUpBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateAndSignUp(BuildContext context) {
    if (context.read<SignUpCubit>().globalKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUpStates();
    }
  }
}