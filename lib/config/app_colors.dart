import 'package:flutter/material.dart';
 
class AppColors{
 
  static Color primaryWhite = HexColor('#FFFFFF');
  static Color primaryDeepPurple = HexColor('#673AB7');

}
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}