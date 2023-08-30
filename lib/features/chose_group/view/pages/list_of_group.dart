import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';

class ListOfGroup extends StatelessWidget {

  const ListOfGroup({super.key});

  @override
  Widget build(BuildContext context) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;
    var list = StringConstants.listOfStudentsGroups[group];
    int tempNum = 1;
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 60),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/menu', arguments: group);
                        },
                      ),
                      Text(
                        "Студенты",
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
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      for (var i = 0; i < list!.length; i++)
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only (top: textMarginTop(list[i]), left: textMarginLeft(list[i])),
                          child: Text(
                            list[i],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize(list[i]),
                              fontWeight: fontWeight(list[i]),
                            ),
                          )
                        ),
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  double fontSize (String text) {
    if (text.contains("Подгруппа")) {
      return 24;
    }
    else {
      return 18;
    }
  }

  FontWeight fontWeight (String text) {
    if (text.contains("Подгруппа")) {
      return FontWeight.w900;
    }
    else {
      return FontWeight.normal;
    }
  }

  double textMarginLeft (String text) {
    if (text.contains("Подгруппа")) {
      return 10;
    }
    else {
      return 30;
    }
  }

  double textMarginTop (String text) {
    if (text.contains("Подгруппа")) {
      return 20;
    }
    else {
      return 5;
    }
  }
}

