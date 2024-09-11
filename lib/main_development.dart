import 'package:advanced_project/core/di/dependancy_injection.dart';
import 'package:advanced_project/core/helper/constatns.dart';
import 'package:advanced_project/core/helper/exctensions.dart';
import 'package:advanced_project/core/helper/shared_preferences_helper.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/doc_doc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil
      .ensureScreenSize(); // to fix text being hidden bug in flutter_screenUtil in release run
  await checkingUserLogin();
  runApp(DocDocApp(appRouter: AppRouter()));
}

checkingUserLogin() async {
  String userToken =
      await SharedPreferencesHelper.getSecuredString(SharedPrefKey.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
