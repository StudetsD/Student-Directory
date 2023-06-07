import 'package:applicate/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img_onboarding.png"),
                fit: BoxFit.cover),
          ),
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  child: Padding(
                    padding: getPadding(
                      top: 10,
                      right: 1,
                    ),
                    child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(1,),
                        top: getVerticalSize(1,),
                        right: getHorizontalSize(1,),
                        bottom: getVerticalSize(1,),
                      ),
                      strokeWidth: getHorizontalSize(1,),
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
                      corners: const Corners(
                        topLeft: Radius.circular(
                          50,
                        ),
                        topRight: Radius.circular(
                          50,
                        ),
                        bottomLeft: Radius.circular(
                          50,
                        ),
                        bottomRight: Radius.circular(
                          50,
                        ),
                      ),
                      child: Container(
                        padding: getPadding(
                          left: 58,
                          top: 55,
                          right: 58,
                          bottom: 55,
                        ),
                        decoration: AppDecoration.outline.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder40,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Добро\nпожаловать",
                                //maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtRobotoRomanBold34.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.37,
                                  ),
                                ),
                              ),
                            ),
                            MaterialButton(
                              height: 50,
                              padding: getPadding(left: 30, right: 30),
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
                                Navigator.pushNamed(context, '/chose');
                                /*var group = _getGroup();
                                print(group);
                                if (group == "none"){
                                  Navigator.pushNamed(context, '/chose');
                                }
                                else{
                                  Navigator.pushNamed(context, '/menu', arguments: group.toString());
                                }*/
                              },
                            ),
                          ],
                        ),
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

/*Future<String> _getGroup() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getString("group").toString();
}*/