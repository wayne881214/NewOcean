import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray100 = fromHex('#cbcbcb');

  static Color red300 = fromHex('#de8484');

  static Color black9003f = fromHex('#3f000000');

  static Color lightBlue900 = fromHex('#004b97');

  static Color teal100 = fromHex('#b0e2d9');

  static Color cyan200 = fromHex('#84dede');

  static Color yellow500 = fromHex('#eae446');

  static Color black900 = fromHex('#000000');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray400 = fromHex('#888888');

  static Color cyan600 = fromHex('#00aeae');

  static Color whiteA701 = fromHex('#fffcfc');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo600 = fromHex('#3c5b97');

  static Color yellow200 = fromHex('#ffed97');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
