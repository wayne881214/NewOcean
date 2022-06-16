import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color indigoA7004c = fromHex('#4c2552e4');

  static Color black9003f = fromHex('#3f000000');

  static Color teal101 = fromHex('#b0e2d9');

  static Color lightBlue900 = fromHex('#004b97');

  static Color amberA400 = fromHex('#ffc600');

  static Color teal100 = fromHex('#9dd9cc');

  static Color black90087 = fromHex('#87000000');

  static Color teal600 = fromHex('#008c6e');

  static Color black900 = fromHex('#000000');

  static Color cyan6004c = fromHex('#4c00aeae');

  static Color redA700 = fromHex('#ff0000');

  static Color yellow100 = fromHex('#fff6c8');

  static Color yellow200 = fromHex('#ffed97');

  static Color gray600 = fromHex('#808080');

  static Color gray400 = fromHex('#c4c4c4');

  static Color pink50 = fromHex('#ffe3eb');

  static Color bluegray100 = fromHex('#cbcbcb');

  static Color orange300 = fromHex('#ecc055');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#8e8e8e');

  static Color whiteA70026 = fromHex('#26ffffff');

  static Color bluegray101 = fromHex('#cecece');

  static Color black90019 = fromHex('#19000000');

  static Color cyan600 = fromHex('#00aeae');

  static Color whiteA700 = fromHex('#ffffff');



  static Color red300 = fromHex('#de8484');




  static Color cyan200 = fromHex('#84dede');

  static Color yellow500 = fromHex('#eae446');



  static Color whiteA701 = fromHex('#fffcfc');


  static Color indigo600 = fromHex('#3c5b97');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
