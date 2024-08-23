import 'package:advanced_project/core/helper/exctensions.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(ColorsManager.mainBlue),
        shape: const WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)))),
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h)),
      ),
      child: Center(
        child: Text(
          "Get Started",
          style: TextStyles.font16WhiteBold,
        ),
      ),
    );
  }
}
