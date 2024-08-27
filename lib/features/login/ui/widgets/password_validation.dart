import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinLength;
  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialChar,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      buildValidationRow('at least 1 lowercase letter', hasLowerCase),
      verticalSpacing(2),
      buildValidationRow('at least 1 uppercase letter', hasUpperCase),
      verticalSpacing(2),
      buildValidationRow('at least 1 number', hasNumber),
      verticalSpacing(2),
      buildValidationRow('at least 1 special character', hasSpecialChar),
      verticalSpacing(2),
      buildValidationRow('at least 8 characters', hasMinLength),
    ]);
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(children: [
      const CircleAvatar(backgroundColor: ColorsManager.grey, radius: 2.5),
      horizontalSpacing(6),
      Text(text,
          style: TextStyles.font13DarkBlueRegular.copyWith(
              decoration: hasValidated ? TextDecoration.lineThrough : null,
              decorationColor: hasValidated ? Colors.green : null,
              decorationThickness: 2,
              color:
                  hasValidated ? ColorsManager.grey : ColorsManager.darkBlue)),
    ]);
  }
}
