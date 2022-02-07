import 'package:flutter/material.dart';
class DarkThemeProvider with ChangeNotifier{
  bool _dartTheme=false;
  bool get darkTheme=>_dartTheme;
  set darkThem(bool value){
    _dartTheme=value;
    notifyListeners();
  }
}