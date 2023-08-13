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
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(top: 60, left: 28),
              child: Text(
                "Выбор группы",
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
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: DropdownButtonHideUnderline(
                child: Container(
                  margin: const EdgeInsets.only(top: 28),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: ColorConstant.borderColor,
                      //заготовка для градиентной границы
                      /*LinearGradient(
                        colors: [ColorConstant.firstBorderGrad, ColorConstant.secondBorderGrad],
                      )*/
                    )
                  ),
                  child: ButtonTheme(
                    alignedDropdown: true,
                    height: 50,
                    child: DropdownButton<String>(
                      dropdownColor: Colors.white70,
                      menuMaxHeight: 500,
                      hint: Text(
                        "   Группа",
                        style: AppStyle.txtRobotoRomanCondensedMedium15,
                      ),
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: ColorConstant.blueFon,
                      ),
                      iconSize: 30,
                      isExpanded: true,
                      items: StringConstants.listOfGroups.map((value) {
                        return DropdownMenuItem(
                          value: value.name,
                          child: Text(value.name),
                          //заготовка для разделения элементов выпадающего списка
                          /*value.type == "group"
                            ? Text(value.name)
                            : Divider(
                                color: Colors.red,
                                thickness: 3,
                              ),*/
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
            const Spacer(),
            Container(
              //alignment: Alignment.bottomCenter,
              width: double.maxFinite,
              height: 50,
              margin: const EdgeInsets.only(bottom: 80, right: 16, left: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  shape: StadiumBorder(),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  "Назад",
                  style: AppStyle.txtRobotoRomanCondensedMedium15
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
//класс разделителя
/*class DropdownMenuItemSeparator<T> extends DropdownMenuItem<T> {
  DropdownMenuItemSeparator(String course) : super(
    enabled: false,     // As of Flutter 2.5.
    child: Text(course), // Trick the assertion.
  );
}*/