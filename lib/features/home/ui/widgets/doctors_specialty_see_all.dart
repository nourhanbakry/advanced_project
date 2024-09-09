import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialtySeeAll extends StatelessWidget {
  const DoctorsSpecialtySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Doctors Specialty", style: TextStyles.font18DarkBlueBold),
        Text("See all", style: TextStyles.font14BlueSemiBold),
      ],
    );
  }
}
