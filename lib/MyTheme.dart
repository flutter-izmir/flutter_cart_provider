import 'package:flutter/material.dart';

class MyTheme extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  ThemeData get themeData => _themeData;

  void changeTheme() {
    if (_themeData == ThemeData.light()) {
      _themeData = ThemeData.dark();
    } else {
      _themeData = ThemeData.light();
    }
    notifyListeners();
  }
}
