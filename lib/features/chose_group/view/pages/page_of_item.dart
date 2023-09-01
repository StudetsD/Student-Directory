import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../widgets/cards/card_of_param_item.dart';
import '../view.dart';


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
                margin: const EdgeInsets.only(top: 40, bottom: 30),
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
                height: 70,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: ColorConstant.menuBackgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: Text(
                    ReductionName(item.name),
                    style: TextStyle(
                      fontSize: 30,
                      color: ColorConstant.startScreenTextColor,
                      fontFamily: 'RobotoBold',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
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

  String ReductionName(String name) {
    if (StringConstants.listOfReductionItemsForItemPage[name] == null) {
      return name;
    }
    else {
      return StringConstants.listOfReductionItemsForItemPage[name]!;
    }
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