import 'package:applicate/widgets/button.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/app_export.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context ) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;

    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Container(
        //можно будет поставить на задний фон градиент
        /*decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorConstant.firstGradInMenu, ColorConstant.secondGradInMenu],
          ),
        ),*/
        child: Material(
          color: Colors.white.withOpacity(0.4),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 60, left: 28),
                child: Text(
                    "Меню",
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
              Expanded(
                child: Center(
                  child: Container(
                    //margin: const EdgeInsets.only(top: 120),
                    height: 441,
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [ColorConstant.firstGradInMenu, ColorConstant.secondGradInMenu],
                      ),
                    ),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          name: "Расписание",
                          group: group,
                          asset: "assets/images/img_bag.svg",
                          way: '/schedule',
                          marginTop: 50,
                        ),
                        CustomButton(
                          name: "Список предметов",
                          group: group,
                          asset: "assets/images/img_location.svg",
                          way: '/lessons',
                          marginTop: 20,
                        ),
                        CustomButton(
                          name: "Список преподавателей",
                          group: group,
                          asset: "assets/images/img_mail.svg",
                          way: '/teachers',
                          marginTop: 20,
                        ),
                        CustomButton(
                          name: "Список группы",
                          group: group,
                          asset: "assets/images/img_man.svg",
                          way: '/students',
                          marginTop: 20,
                        ),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.5),
                              shape: StadiumBorder(),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/chose', arguments: group);
                            },
                            child: Row(
                                children:[
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.arrow_back_ios, color: Colors.indigo,)
                                  ),
                                  const Text(
                                    'Вернуться к выбору группы',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.indigo,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 10.0,
                                          color: Colors.black26,
                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
      ),
    );
  }
}

/*Future<void> _removeGroup() async {
  var prefs = await SharedPreferences.getInstance();
  prefs.setString("group", "none");
}*/