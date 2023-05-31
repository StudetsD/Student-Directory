import 'package:flutter/material.dart';

class ColorConstant {
  static Color blue900 = fromHex('#0a2999');

  static Color blue700 = fromHex('#368dc6');

  static Color blueGray400 = fromHex('#888888');

  static Color gray80099 = fromHex('#993c3c43');

  static Color purple90026 = fromHex('#26452a7c');

  static Color black9003f = fromHex('#3f000000');

  static Color indigo8004c = fromHex('#4c2a4a7c');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color cyan100 = fromHex('#aeecf0');

  static Color black900 = fromHex('#000000');

  static Color whiteA70068 = fromHex('#68ffffff');

  static Color blue400 = fromHex('#3892ec');

  static Color indigo90019 = fromHex('#19292782');

  static Color blue90001 = fromHex('#0a2a99');

  static Color blueGray800C4 = fromHex('#c43e404f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueLight = fromHex('93B1C7FF');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}