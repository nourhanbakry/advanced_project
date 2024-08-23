import 'package:advanced_project/core/themeing/styles.dart';
import 'package:advanced_project/features/onBoarding/widgets/docdoc_name_logo.dart';
import 'package:advanced_project/features/onBoarding/widgets/doctor_image_and_text.dart';
import 'package:advanced_project/features/onBoarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(children: [
              const DocdocNameLogo(),
              SizedBox(height: 30.h),
              const DoctorImageAndText(),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(children: [
                    Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        style: TextStyles.font13Grey,
                        textAlign: TextAlign.center),
                    SizedBox(height: 30.h),
                    const GetStartedButton()
                  ]))
            ]),
          ),
        ),
      ),
    );
  }
}
