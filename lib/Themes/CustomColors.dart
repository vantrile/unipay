import 'package:flutter/material.dart';

class CustomColors {
  static Color backgroundColor = HexColor().fromHex("#1F1D2B");
  static Color blueColor = HexColor().fromHex("#6171FF");
  static Color whileColor = HexColor().fromHex("#FFFFFF");
  static Color backgroundText = HexColor().fromHex("#282638");
  static Color colorContentText = HexColor().fromHex("#80FFFFFF");
  static Color colorPrimaryBlue = HexColor().fromHex("#6171FF");
  static Color color1 = HexColor().fromHex('#4B6CB7');
  static Color color2 = HexColor().fromHex('#182848');
}

class HexColor {
  Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length <= 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));

    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
