import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/font_weigth_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeigthHelper.bold,
  );

  static TextStyle font32BlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 32.sp,
    fontWeight: FontWeigthHelper.bold,
  );

  static TextStyle font24BlueBold = TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 24.sp,
    fontWeight: FontWeigthHelper.bold,
  );

  static TextStyle font13GreyRegular = TextStyle(
    color: ColorsManager.grey,
    fontSize: 13.sp,
    fontWeight: FontWeigthHelper.regular,
  );

  static TextStyle font14GreyRegular = TextStyle(
    color: ColorsManager.grey,
    fontSize: 14.sp,
    fontWeight: FontWeigthHelper.regular,
  );

  static TextStyle font14LightGreyRegular = TextStyle(
    color: ColorsManager.lightGrey,
    fontSize: 14.sp,
    fontWeight: FontWeigthHelper.regular,
  );

  static TextStyle font16WhiteBold = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeigthHelper.bold,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    color: ColorsManager.darkBlue,
    fontSize: 14.sp,
    fontWeight: FontWeigthHelper.medium,
  );

  static TextStyle font14BlueRegular = const TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 14,
    fontWeight: FontWeigthHelper.regular,
  );

  static TextStyle font14BlueSemiBold = const TextStyle(
    color: ColorsManager.mainBlue,
    fontSize: 14,
    fontWeight: FontWeigthHelper.semiBold,
  );
  static TextStyle font13DarkBlueRegular = TextStyle(
    color: ColorsManager.darkBlue,
    fontSize: 13.sp,
    fontWeight: FontWeigthHelper.regular,
  );

  static TextStyle font18DarkBlueBold = TextStyle(
    color: ColorsManager.darkBlue,
    fontSize: 18.sp,
    fontWeight: FontWeigthHelper.bold,
  );

  static TextStyle font12GreyRegular = TextStyle(
    color: ColorsManager.grey,
    fontSize: 12.sp,
    fontWeight: FontWeigthHelper.regular,
  );

  static TextStyle font18WhiteMedium = TextStyle(
    color: Colors.white,
    fontSize: 18.sp,
    fontWeight: FontWeigthHelper.medium,
  );
}
