import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "Already have an account? ",
              style: TextStyles.font14GreyRegular),
          TextSpan(text: "sign up", style: TextStyles.font14BlueSemiBold)
        ]));
  }
}
