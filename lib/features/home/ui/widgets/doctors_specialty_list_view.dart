import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialtyListview extends StatelessWidget {
  const DoctorsSpecialtyListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
                padding: EdgeInsetsDirectional.only(
                    start: index == 0 ? 0 : 24.w, top: 10.h),
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 28,
                        backgroundColor: ColorsManager.lightBlue,
                        child: SvgPicture.asset("assets/svgs/notifications.svg",
                            height: 40.h, width: 40.w)),
                    verticalSpacing(8),
                    Text("General", style: TextStyles.font13DarkBlueRegular)
                  ],
                ));
          }),
    );
  }
}
