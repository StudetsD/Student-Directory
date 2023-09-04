import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../../../widgets/cards/card_of_param_item.dart';


class PageOfItem extends StatelessWidget {
  const PageOfItem({super.key});

  @override
  Widget build(BuildContext context) {
    var item = (ModalRoute.of(context)?.settings.arguments ?? "") as Items;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
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
                        Navigator.pushNamed(context, '/lessons', arguments: item.groups[0]);
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
              Container(
                height: 100,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: ColorConstant.menuBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: MaterialButton(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      ReductionName(item.name),
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
              CardOfParamItem(text: 'Преподаватель: \nФамилия Имя Отчество', icon: "assets/icons/teacher.svg", isButton: false, item: item,),
              CardOfParamItem(text: 'Вид аттестации: ${item.mark}', icon: "assets/icons/type_of_attestation.svg", isButton: false, item: item,),
              CardOfParamItem(text: 'Длительность: ${FormMessage(item.semestr)}', icon: "assets/icons/calendar.svg", isButton: false, item: item,),
              CardOfParamItem(text: 'Ссылка на материалы', icon: "assets/icons/download.svg", isButton: true, item: item,),
            ],
          ),
        ),
      ),
    );
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

  String FormMessage(List semestr) {
    var size = semestr.length;
    if (size == 1) {
      return "$size семестр\n(${semestr.first})";
    }
    else if (size > 1 && size <= 4) {
      return "$size семестра\n(c ${semestr.first} по ${semestr.last})";
    }
    else {
      return "$size семестров\n(c ${semestr.first} по ${semestr.last})";
    }
  }
}