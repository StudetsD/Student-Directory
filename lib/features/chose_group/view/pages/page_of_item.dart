import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/cards/button_of_param_item.dart';
import '../../../../widgets/cards/card_of_param_item.dart';


class PageOfItem extends StatefulWidget {
  const PageOfItem({super.key});

  @override
  State<PageOfItem> createState() => _PageOfItemState();
}

class _PageOfItemState extends State<PageOfItem> {
  @override
  Widget build(BuildContext context) {
    var data = (ModalRoute.of(context)?.settings.arguments ?? "") as List;
    var item = data[0];
    var group = data[1];
    final String nameTeacher = _getTeacherName(group, item.name);
    final redName = ReductionName(item.name);
    final isTeacherDefined = nameTeacher != 'Информации о преподавателе нет' ? true : false;
    final List buttonTextParam = isTeacherDefined ? [16.0 ,"RobotoRegular"] : [15.0, "RobotoBold"];
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 40, bottom: 15),
              child: Row(
                children: [
                  IconButton(
                    icon:AppIconStyle.iconTopBack,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Предмет",
                    textAlign: TextAlign.center,
                    style: AppStyle.textTopStyle,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: ColorConstant.menuBackgroundColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: MaterialButton(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 10),
                        child: Text(
                          redName,
                          style: TextStyle(
                            fontSize: 30,
                            color: ColorConstant.startScreenTextColor,
                            fontFamily: 'RobotoBold',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      onPressed: ()  => _showToast(context, item.name),
                    )
                  ),
                  if (isTeacherDefined)
                    ButtonOfParamItem(
                      height: 75,
                      iconHeight: 35,
                      text: 'Преподаватель: \n$nameTeacher',
                      icon: "assets/icons/teacher.svg",
                      typeOfButton: nameTeacher,
                      item: item,
                      color: ColorConstant.menuBackgroundColor,
                      textSize: buttonTextParam[0],
                      fontFamily: buttonTextParam[1],
                    ),
                  ButtonOfParamItem(
                    height: 40,
                    iconHeight: 27,
                    text: 'Ссылка на материалы',
                    icon: "assets/icons/download.svg",
                    typeOfButton: "disk",
                    item: item,
                    color: ColorConstant.menuBackgroundColor,
                    textSize: buttonTextParam[0],
                    fontFamily: buttonTextParam[1],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text (
                      "Информация по предмету",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'RobotoBold',
                        color: ColorConstant.startScreenTextColor,
                      ),
                    ),
                  ),
                  Divider(
                    color: ColorConstant.startScreenTextColor,
                    thickness: 1,
                  ),
                  if (!isTeacherDefined) CardOfParamItem(text: nameTeacher, icon: "assets/icons/teacher.svg",),
                  CardOfParamItem(text: 'Вид аттестации: ${item.mark}', icon: "assets/icons/type_of_attestation.svg",),
                  CardOfParamItem(text: 'Начинается с ${item.semestr.first}-ого семестра', icon: "assets/icons/calendar.svg",),
                  CardOfParamItem(text: 'Количество семестров: ${item.semestr.length}', icon: "assets/icons/semester.svg",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color choseColor (String teacher) {
    if (teacher == 'Информации о преподавателе нет') {
      return ColorConstant.menuBackgroundColor;
    }
    else {
      return ColorConstant.pageOfItemColorButton;
    }
  }

  void _showToast(BuildContext context, String fullName) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(
          "$fullName\n\n(Чтобы убрать, смахните сообщение вниз)",
          style: TextStyle(
            color: ColorConstant.startScreenTextColor,
            fontFamily: 'RobotoNormal',
          ),
        ),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.only(bottom: 50, left: 20, right: 20),
      ),
    );
  }

  String ReductionName(String name) {
    List words =  name.split(" ");
    List LongWords = [];
    String finalTitle = "";
    int countOfLongWords = 0;
    if (name == "Безопасность жизнедеятельности") {
      return "БЖД";
    }
    for (var word in words) {
      if (word.length >= 4) {
        word.toString().split("-").forEach((element) {LongWords.add(element);});
        countOfLongWords += word.toString().split("-").length;
      }
    }
    if (countOfLongWords > 2) {
      for (var word in LongWords) {
        int i = 0;
        String subStartSym = "";
        String subEndSym = "";
        if (word.toString().contains('(')){
          subStartSym = "(";
          i += 1;
        }
        if (word.toString().contains(')')){
          subEndSym = ")";
        }
        finalTitle += subStartSym + word[i].toString().toUpperCase() + subEndSym;
        if (finalTitle.length >= 6) {
          break;
        }
      }
    }
    else {
      finalTitle = name;
    }
    return finalTitle;
  }

  String _getTeacherName (String group, String itemName) {
    List<List<String>> rightItem= [];
    for (var i = 0; i < StringConstants.listOfItemsTeachers.length; i++) {
      if (StringConstants.listOfItemsTeachers[i][itemName] != null && StringConstants.listOfItemsTeachers[i][itemName]!.isNotEmpty) {
        List<String> groups = StringConstants.listOfItemsTeachers[i][itemName]!;
        groups.add("$i");
        rightItem.add(groups);
      }
    }
    if (rightItem.isEmpty) {
      return 'Информации о преподавателе нет';
    }
    else if (rightItem.length == 1) {
      return ListOfTeach.listOfTeachers[int.parse(rightItem.first.last)].name;
    }
    else {
      for (var i = 0; i < rightItem.length - 1; i++) {
        if (rightItem[i].contains(group)) {
          return ListOfTeach.listOfTeachers[int.parse(rightItem[i].last)].name;
        }
      }
      return ListOfTeach.listOfTeachers[int.parse(rightItem[0].last)].name;
    }
  }
}