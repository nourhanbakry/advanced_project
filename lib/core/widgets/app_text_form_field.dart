import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String hintText;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  const AppTextFormField(
      {super.key,
      this.contentPadding,
      required this.hintText,
      this.enabledBorder,
      this.focusedBorder,
      this.inputTextStyle,
      this.hintTextStyle,
      this.isObscureText,
      this.suffixIcon,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyles.font14DarkBlueMedium,
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? ColorsManager.lighterGrey,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintTextStyle ?? TextStyles.font14LightGreyRegular,
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        isDense: true,
        enabledBorder: enabledBorder ??
            const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(color: ColorsManager.lightGrey)),
        focusedBorder: focusedBorder ??
            const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                borderSide:
                    BorderSide(color: ColorsManager.mainBlue, width: 1.3)),
      ),
    );
  }
}
