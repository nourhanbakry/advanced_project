import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';

class TermsAndCondtionsText extends StatelessWidget {
  const TermsAndCondtionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: "By continuing you agree to our ",
            style: TextStyles.font14GreyRegular),
        TextSpan(
            text: "Terms and Conditions",
            style: TextStyles.font14DarkBlueMedium),
        TextSpan(
            text: " and ",
            style: TextStyles.font14GreyRegular.copyWith(height: 1.5)),
        TextSpan(
            text: "Privacy Policy", style: TextStyles.font14DarkBlueMedium),
      ]),
    );
  }
}
