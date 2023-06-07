import 'package:flutter/material.dart';
import 'package:applicate/core/app_export.dart';

class ListOfLessons extends StatelessWidget {

  const ListOfLessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 60, left: 28),
              child: Text(
                "Предметы",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstant.colorText,
                  fontSize: 25,
                  fontFamily: 'RobotoBold',
                  fontWeight: FontWeight.w900,
                  shadows: const [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black26,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
              ),
            ),
            Container()
          ],
        ),
      ),
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