import 'package:flutter/material.dart';

class ColorConstant {

  static Color blue700 = fromHex('#368dc6');

  static Color blueGray400 = fromHex('#888888');

  static Color purple90026 = fromHex('#26452a7c');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color black900 = fromHex('#000000');

  static Color whiteA70068 = fromHex('#68ffffff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueFon = fromHex('#0d205e');

  static Color colorText = fromHex('#378eca');

  static Color borderColor = fromHex('22F9F9');

  static Color firstGradInMenu = fromHex('0A2A99');

  static Color secondGradInMenu = fromHex('AEECF0');

  static Color startScreenFon = const Color.fromRGBO(48, 52, 67, 1);

  static Color startScreenButtonFon = const Color.fromRGBO(76, 79, 105, 0.4);

  static Color startScreenTextColor = const Color.fromRGBO(198, 208, 245, 1);

  static Color startScreenButtonTextColor = const Color.fromRGBO(239, 241, 245, 0.5);

  static Color chosePageFon = const Color.fromRGBO(76, 79, 105, 0.7);

  static Color chosePageBorderColor = const Color.fromRGBO(76, 79, 105, 0.1);

  static Color pageItemParamColor = const Color.fromRGBO(76, 79, 105, 0.2);

  static Color pageItemParamButtonColor = const Color.fromRGBO(239, 241, 245, 0.3);

  static Color chosePageTextColor = const Color.fromRGBO(239, 241, 245, 0.4);

  static Color menuBackgroundColor = const Color.fromRGBO(35, 38, 52, 1);

  static Color paramOfItemColor = const Color.fromRGBO(198, 208, 245, 0.4);

  static Color choseGroupColorText = const Color.fromRGBO(198, 208, 245, 0.55);

  static Color choseGroupColorButton = const Color.fromRGBO(35, 38, 52, 0.8);

  static Color choseGroupColorBorderSearch = const Color.fromRGBO(180, 190, 254, 1);

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}