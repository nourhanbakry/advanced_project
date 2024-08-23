import 'package:advanced_project/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonHeight;
  final double? buttonWidth;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonHeight,
      this.buttonWidth,
      required this.buttonText,
      required this.textStyle,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16))),
        backgroundColor:
            WidgetStatePropertyAll(backgroundColor ?? ColorsManager.mainBlue),
        padding: WidgetStatePropertyAll(EdgeInsets.symmetric(
            horizontal: horizontalPadding?? 12.w,
            vertical: verticalPadding?? 14.h)),
        fixedSize: WidgetStatePropertyAll(
            Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 50.h)),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: textStyle),
    );
  }
}
