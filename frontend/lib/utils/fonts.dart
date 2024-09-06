import 'package:flutter/material.dart';

class FontSizer {
  late final fontsize;

  static double littlefontmain(context) {
    var screenSize = MediaQuery.of(context).size;
    var fontSize = 16.0;
    if (screenSize.width <= 500) {
      fontSize = 10.0;
    } else if (screenSize.width > 500 && screenSize.width < 1000) {
      fontSize = 16.0;
    } else {
      fontSize = 23.0;
    }
    return fontSize;
  }

  static double bigfontmain(context) {
    var screenSize = MediaQuery.of(context).size;
    var bigFont = 40.0;
    if (screenSize.width <= 500) {
      bigFont = 26.0;
    } else if (screenSize.width > 500 && screenSize.width < 1000) {
      bigFont = 34.0;
    } else {
      bigFont = 40.0;
    }
    return bigFont;
  }

  static double resumelittlefont(context) {
    var screenSize = MediaQuery.of(context).size;
    var fontSize = 16.0;
    if (screenSize.width <= 500) {
      fontSize = 12.0;
    } else if (screenSize.width > 500 && screenSize.width < 1000) {
      fontSize = 16.0;
    } else {
      fontSize = 23.0;
    }
    return fontSize;
  }

  static double resumebigfont(context) {
    var screenSize = MediaQuery.of(context).size;
    var bigFont = 30.0;
    if (screenSize.width <= 500) {
      bigFont = 16.0;
    } else if (screenSize.width > 500 && screenSize.width < 1000) {
      bigFont = 24.0;
    } else {
      bigFont = 30.0;
    }
    return bigFont;
  }

  static double chartInputSizer(context) {
    var screenSize = MediaQuery.of(context).size;
    var inputSize = screenSize.width / 5;
    if (screenSize.width <= 500) {
      inputSize = screenSize.width / 2;
    } else if (screenSize.width > 500 && screenSize.width <= 1000) {
      inputSize = screenSize.width / 3;
    } else {
      inputSize = screenSize.width / 5;
    }
    return inputSize;
  }

  static double chartheadSizer(context) {
    var screenSize = MediaQuery.of(context).size;
    var headFont = 24.0;
    if (screenSize.width <= 500) {
      headFont = 14.0;
    } else if (screenSize.width > 500 && screenSize.width <= 1000) {
      headFont = 16.0;
    } else {
      headFont = 24.0;
    }
    return headFont;
  }

  static double chartbottomSizer(context) {
    var screenSize = MediaQuery.of(context).size;
    var bottomFont = 18.0;
    if (screenSize.width <= 500) {
      bottomFont = 10.0;
    } else if (screenSize.width > 500 && screenSize.width <= 1000) {
      bottomFont = 14.0;
    } else {
      bottomFont = 18.0;
    }
    return bottomFont;
  }
}
