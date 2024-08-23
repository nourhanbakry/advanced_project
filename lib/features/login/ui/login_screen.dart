import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:advanced_project/core/widgets/app_text_button.dart';
import 'package:advanced_project/core/widgets/app_text_form_field.dart';
import 'package:advanced_project/features/login/ui/widgets/already_have_account_text.dart';
import 'package:advanced_project/features/login/ui/widgets/terms_and_condtions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final globalKey = GlobalKey<FormState>();
  bool obScureText = true;
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
                Form(
                  key: globalKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: "Email"),
                      verticalSpacing(18),
                      AppTextFormField(
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  obScureText = !obScureText;
                                });
                              },
                              child: Icon(obScureText
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          hintText: "Password",
                          isObscureText: obScureText),
                      verticalSpacing(24),
                      Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text("Forgot Password?",
                              style: TextStyles.font14BlueRegular)),
                      verticalSpacing(40),
                      AppTextButton(
                          buttonText: "Login",
                          textStyle: TextStyles.font16WhiteBold,
                          onPressed: () {}),
                      verticalSpacing(16),
                      const TermsAndCondtionsText(),
                      verticalSpacing(60),
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
