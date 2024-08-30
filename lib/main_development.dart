import 'package:advanced_project/core/di/dependancy_injection.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/doc_doc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
setupGetIt();
 // to fix text being hidden bug in flutter_screenUtil in release run
  await ScreenUtil.ensureScreenSize();
  runApp(DocDocApp(appRouter: AppRouter() ));
}
