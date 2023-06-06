import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';

class ListOfLessons extends StatelessWidget {

  const ListOfLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          color: ColorConstant.blueFon,
        ),
        BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 8.0,
            sigmaY: 8.0,
          ),
          child: Container(
            color: Colors.transparent,
              child: Text("Список предметов")
          ),
        ),
      ],
    );
      /*SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          child: Container(
              decoration: AppDecoration.outline,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  BackdropFilter(
                    filter: ui.ImageFilter.blur(
                      sigmaX: 8.0,
                      sigmaY: 8.0,
                    ),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                  Center(
                      child: Text("Список предметов")
                  ),
                ],
              )

            )
        ),
      ),
    );*/
  }
}