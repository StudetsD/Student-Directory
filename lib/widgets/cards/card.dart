import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class Card_ extends StatelessWidget{
  Card_ ({
    super.key,
    required this.item,
});
  var item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [ColorConstant.firstGradInMenu, ColorConstant.secondGradInMenu],
        ),
      ),
      child: Center(
          child: Text(item.name, textAlign: TextAlign.center,)
      ),
    );
  }

}