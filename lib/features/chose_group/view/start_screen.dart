import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartScreen extends StatefulWidget{
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  String _group = "";

  @override
  void initState() {
    _initGroup();
    super.initState();
  }

  Future _initGroup() async{
    _group = await _getGroup();
  }

  Future<String> _getGroup() async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getString('group') ?? "";
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/menu_fon.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Container(
            width: double.maxFinite,
            height: 270,
            margin: const EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorConstant.startScreenFon,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Добро\nпожаловать",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'RobotoBold',
                      fontWeight: FontWeight.w700,
                      color: ColorConstant.startScreenTextColor,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 58, right: 58),
                  child: MaterialButton(
                    height: 50,
                    minWidth: double.infinity,
                    color: ColorConstant.startScreenButtonFon,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    child: Text(
                      "Начать",
                      style: TextStyle(color: ColorConstant.startScreenButtonTextColor),
                    ),
                    onPressed: () {
                      if (_group == ""){
                        Navigator.pushNamed(context, '/chose');
                      }
                      else {
                        Navigator.pushNamed(context, '/menu', arguments: _group);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}