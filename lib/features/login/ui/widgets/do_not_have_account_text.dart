import 'package:advanced_project/core/helper/exctensions.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DonotHaveAccountText extends StatelessWidget {
  const DonotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "Don't have an account? ",
              style: TextStyles.font14GreyRegular),
          TextSpan(text: "sign up", style: TextStyles.font14BlueSemiBold,recognizer: TapGestureRecognizer()..onTap=(){
            context.pushNamed(Routes.signUpScreen);
          })
        ]));
  }
}
