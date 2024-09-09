import 'package:advanced_project/core/themeing/colors.dart';
import 'package:advanced_project/core/themeing/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Hi, Nourhan", style: TextStyles.font18DarkBlueBold),
          Text("How are you feeling today?",
              style: TextStyles.font12GreyRegular)
        ]),
        const Spacer(),
        CircleAvatar(
            radius: 24,
            backgroundColor: ColorsManager.lighterGrey,
            child: SvgPicture.asset("assets/svgs/notifications.svg"))
      ],
    );
  }
}
