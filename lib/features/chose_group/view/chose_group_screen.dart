import 'package:applicate/core/app_export.dart';
import 'package:applicate/features/chose_group/chose_group.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:applicate/widgets/custom_text_form_field.dart';

class ChoseGroupScreen extends StatelessWidget{
  TextEditingController groupController = TextEditingController();
  //const ChoseGroupScreen({super.key, required this.title});
  //final String title;

  @override
  Widget build(BuildContext context) {
    String valueChoose;
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
                          borderRadius: BorderRadiusStyle.roundedBorder50,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
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
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: const EdgeInsets.only(left: 16, right: 16),
                                child: DropdownButton<String>(
                                  hint: Text(
                                    "  Группа",
                                    style: AppStyle.txtRobotoRomanCondensedMedium15,
                                  ),
                                  icon: const Icon(Icons.arrow_drop_down),
                                  iconSize: 30,
                                  isExpanded: true,
                                  //underline: SizedBox(),
                                  //dropdownColor: Colors.transparent,
                                  items: StringConstants.listOfGroups.map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {
                                    PortfolioPage();
                                  },
                                ),
                              ),
                            ),
                            /*CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: groupController,
                              hintText: " Группа",
                              margin: getMargin(
                                top: 20,
                              ),
                              textInputAction: TextInputAction.done,
                            ),*/
                            Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Text(
                                "Выбери группу",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRomanCondensedMedium15,
                              ),
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
