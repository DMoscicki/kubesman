import 'package:frontend/themes/themes.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = ThemeClass.lightTheme;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == ThemeClass.lightTheme) {
      themeData = ThemeClass.darkTheme;
    } else {
      themeData = ThemeClass.lightTheme;
    }
  }
}
