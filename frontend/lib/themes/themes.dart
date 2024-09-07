import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeClass {
  Color lightPrimaryColor = HexColor('#DF0054');
  Color darkPrimaryColor = HexColor('#480032');
  Color secondaryColor = HexColor('#FF8B6A');
  Color accentColor = HexColor('#FFD2BB');
  Color darkButtonColor = HexColor('#030202');
  Color lightButtonColor = HexColor('#fbfbfb');

  static ThemeData get lightTheme => ThemeData(
        primaryColor: ThemeData.light().scaffoldBackgroundColor,
        colorScheme: const ColorScheme.light().copyWith(
            primary: _themeClass.lightPrimaryColor,
            secondary: _themeClass.darkButtonColor),
        useMaterial3: true,
        dividerColor: Colors.transparent,
      );

  static ThemeData get darkTheme => ThemeData(
        primaryColor: ThemeData.dark().scaffoldBackgroundColor,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: _themeClass.darkPrimaryColor,
          secondary: _themeClass.lightButtonColor,
        ),
        dividerColor: Colors.transparent,
        useMaterial3: true,
      );
}

ThemeClass _themeClass = ThemeClass();
