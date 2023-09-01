import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/app_export.dart';

class ChoseGroupScreen extends StatefulWidget{
  const ChoseGroupScreen({super.key});

  @override
  State<ChoseGroupScreen> createState() => _ChoseGroupScreenState();
}

class _ChoseGroupScreenState extends State<ChoseGroupScreen> {
  static const tempGroup = 'group';

  Future _setGroup(String group) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString(tempGroup, group);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 40, bottom: 10),
            child: Row(
              children: [
                IconButton(
                  icon: AppIconStyle.iconTopBack,
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                Text(
                  "Выбор группы",
                  style: AppStyle.textTopStyle,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: DropdownButtonHideUnderline(
              child: Container(
                decoration: BoxDecoration(
                  color: ColorConstant.chosePageFon,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ButtonTheme(
                  alignedDropdown: true,
                  height: 50,
                  child: DropdownButton<String>(
                    dropdownColor: ColorConstant.chosePageFon,
                    menuMaxHeight: 600,
                    hint: Text(
                      "Группа",
                      style: AppStyle.txtRobotoRomanCondensedMedium17,
                    ),
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: ColorConstant.chosePageTextColor,
                    ),
                    iconSize: 30,
                    isExpanded: true,
                    items: StringConstants.listOfGroups.map((value) {
                      return DropdownMenuItem(
                        value: value.name,
                        child: Text(
                          value.name,
                          style: TextStyle(
                            color: ColorConstant.startScreenTextColor,
                            fontFamily: 'RobotoBold',
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (chose) async {
                      await _setGroup(chose!);
                      Navigator.pushNamed(context, '/menu', arguments: chose);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}