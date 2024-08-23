import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset("assets/svgs/docdoc_logo_low_opacity.svg"),
      Container(
          foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  stops: const [0.14, 0.4],
                  colors: [Colors.white, Colors.white.withOpacity(0.0)])),
          child: Image.asset("assets/images/onBoarding_doctor.png")),
      Positioned(
        left: 10.w,
        right: 10.w,
        bottom: 10.h,
        child: Text("Best Doctor\nAppointment App",
            style: TextStyles.font32BlueBold, textAlign: TextAlign.center),
      )
    ]);
  }
}
