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
            image: AssetImage("assets/images/img_onboarding.png"),
            fit: BoxFit.cover
          ),
        ),
        child: Center(
          child: Container(
            width: double.maxFinite,
            height: 270,
            margin: const EdgeInsets.only(right: 5, left: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                begin: const Alignment(
                  0.12,
                  0.07,
                ),
                end: const Alignment(
                  0.95,
                  1,
                ),
                colors: [
                  ColorConstant.whiteA70099,
                  ColorConstant.black900,
                ],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white.withOpacity(0.3),
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
                      style: AppStyle.txtRobotoRomanBold34.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.37,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 58, right: 58),
                    child: MaterialButton(
                      height: 50,
                      minWidth: double.infinity,
                      color: Colors.white.withOpacity(0.5),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                      child: const Text(
                        "Начать",
                        style: TextStyle(color: Colors.blueGrey,),
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
      ),
    );
  }
}