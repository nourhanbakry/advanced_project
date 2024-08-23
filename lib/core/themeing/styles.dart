import 'package:advanced_project/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700Weigth = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font13Grey = TextStyle(
    color: ColorsManager.grey,
    fontSize: 13.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle font16White700Weigth = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
}
