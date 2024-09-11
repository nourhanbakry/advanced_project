import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedPreferencesHelper {
  // private constractor that I wouldn't allow to create instace from it
  SharedPreferencesHelper._();

  /// remove data from shared preferences with a given [key]
  static removeData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
    debugPrint("data with $key removed from shared preferences");
  }

  /// clear all data from shared preferences
  static clearAllData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    debugPrint("all data cleared from shared preferences");
  }

  /// store data with [key] and [value] in shared prefernces
  static setData(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    switch (value.runtimeType) {
      case String:
        prefs.setString(key, value);
        break;
      case bool:
        prefs.setBool(key, value);
        break;
      case int:
        prefs.setInt(key, value);
        break;
      case double:
        prefs.setDouble(key, value);
        break;
      case List:
        prefs.setStringList(key, value);
        break;
      default:
        throw Exception("Unsupported data type");
    }
    debugPrint("data with $key and $value stored in shared preferences");
  }

  /// get  a bool data from shared preferences with a given [key]
  static getBool(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key) ?? false;
  }

  /// get  a int data from shared preferences with a given [key]
  static getInt(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key) ?? 0;
  }

  /// get  a double data from shared preferences with a given [key]
  static getDouble(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0.0;
  }

  /// get  a String data from shared preferences with a given [key]
  static getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) ?? "";
  }

  /// set secured String
  static setSecuredString(String key, value) async {
    const storage = FlutterSecureStorage();
    await storage.write(key: key, value: value);
    debugPrint("data with $key and $value stored in Secured Storge");
  }

  /// get secured String
  static getSecuredString(String key) async {
    debugPrint("get data with $key from Secured Storge");
    const storage = FlutterSecureStorage();
     return await storage.read(key: key) ?? '';
    
  }

  /// remove secured String
  static removeSecuredString() async {
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
    debugPrint("data  removed from Secured Storge");
  }
}
