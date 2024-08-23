import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/core/routing/routes.dart';
import 'package:advanced_project/core/themeing/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// client app (that found under main)
class DocDocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocDocApp({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),  
        minTextAdapt: true,
        child: MaterialApp(
          theme: ThemeData(
              primaryColor: ColorsManager.mainBlue,
              scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRouter().generateRoute,
          initialRoute: Routes.onBoardingScreen,
        ));
  }
}
