import 'package:flutter/material.dart';
// temporary error handler
class ErrorHandler {
  final String message;
  ErrorHandler(this.message);
   static handle(dynamic error) {
     debugPrint(error);
   }

}