import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';

class ListOfGroup extends StatelessWidget {

  const ListOfGroup({super.key});

  @override
  Widget build(BuildContext context) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;
    var list = StringConstants.listOfStudentsGroups[group];
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  IconButton(
                    icon: AppIconStyle.iconTopBack,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Студенты",
                    textAlign: TextAlign.center,
                    style: AppStyle.textTopStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          for (var i = 0; i < list!.length; i++)
                            Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only (top: textMarginTop(list[i]), left: textMarginLeft(list[i])),
                                  child: Text(
                                    formText(list[i]),
                                    style: TextStyle(
                                      color: ColorConstant.startScreenTextColor,
                                      fontSize: 20,
                                      fontWeight: fontWeight(list[i]),
                                      fontFamily: "Roboto${fontFamily(list[i])}"
                                    ),
                                  )
                                ),
                                if(list[i].contains("Подгруппа"))
                                  Container(
                                    margin: const EdgeInsets.only(left: 10, right: 30),
                                    child: Divider(
                                      thickness: 1,
                                      color: ColorConstant.startScreenTextColor,
                                    ),
                                  ),
                              ],
                            ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formText (String text) {
    if (text.contains("Подгруппа")) {
      List<String> components = text.split(" ");
      return "${components[0]}${formEnding(components[0])} ${components[1]}";
    }
    else {
      return text;
    }
  }

  String formEnding (String num) {
    if (num == "3") {
      return "-я";
    }
    else {
      return "-ая";
    }
  }

  String fontFamily (String text) {
    if (text.contains("Подгруппа")) {
      return "Medium";
    }
    else {
      return "Regular";
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
      return 40;
    }
  }

  double textMarginTop (String text) {
    if (text.contains("Подгруппа")) {
      if (text.contains("1")) {
        return 0;
      }
      else {
        return 20;
      }
    }
    else {
      return 0;
    }
  }
}

