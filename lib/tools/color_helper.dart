import 'package:flutter/material.dart';

class ColorHelper {
  static const primaryColor = Color(0xFF3497D4);

  static const generalBackgroundColor = Colors.white;

  static const primaryTextColor = Colors.black;
  static const secondaryTextColor = Color(0xFF8A8A8A);

  static const primaryIconColor = Color(0xFF28303F);

  static const authDividerColor = Color(0xFFDEDEDE);
  static const authTextFieldBorderColor = Color(0xFFB4B4B4);

  static const authButtonTextColor = Colors.white;
  static const authButtonBackgroundGradientColor1 = Color(0xFF9532E2);
  static const authButtonBackgroundGradientColor2 = Color(0xFF3497D4);

  static const secondaryButtonTextColor = Color(0xFF1E1929);
  static const socialButtonBorderColor = Color(0xFFD1D1D1);

  static const dropdownItemTextColor = Color(0xFF1B2133);

  static const highlightedButtonColor = Color(0xFF3497D4);

  static MaterialColor createPrimarySwatch() {
    Color color = primaryColor;
    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (double strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
