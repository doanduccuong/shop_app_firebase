import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePreference {
  static SharedPreferences? _preferences;
  static Future init()async=>
      _preferences=await SharedPreferences.getInstance();
  static Future setThemeStatus(bool value)async{
    return await _preferences?.setBool('THEME_STATUS', value).then((value) => print(value));
  }
  static getThemeStatus(){
    return _preferences?.getBool('THEME_STATUS')??false;
  }

}
