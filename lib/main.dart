import 'package:advanced_project/core/di/dependancy_injection.dart';
import 'package:advanced_project/core/routing/app_router.dart';
import 'package:advanced_project/doc_doc.dart';
import 'package:flutter/material.dart';

void main() {
setupGetIt();
  runApp(DocDocApp(appRouter: AppRouter() ));
}
