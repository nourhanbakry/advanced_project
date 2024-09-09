import 'package:advanced_project/core/themeing/spacing.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          width: double.infinity,
          height: 165.h,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(24.r)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Book and\nschedule with\nnearst doctor",
                textAlign: TextAlign.start,
                style: TextStyles.font18WhiteMedium),
            verticalSpacing(16),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {},
                  child:
                      Text("Find Nearby", style: TextStyles.font14BlueRegular)),
            )
          ]),
        ),
        Positioned(
          right: 16,
          top: 0,
          child: Image.asset("assets/images/girlDoctor.png", height: 200.h),
        ),
      ]),
    );
  }
}
