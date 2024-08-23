import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocdocNameLogo extends StatelessWidget {
  const DocdocNameLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/docdoc_logo.svg"),
        SizedBox(width: 10.w),
        Text("DocDoc", style: TextStyles.font24Black700Weigth)
      ],
    );
  }
}
