import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class CardOfItem extends StatelessWidget{
  const CardOfItem ({
    super.key,
    required this.item,
});
  final Items item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstant.menuBackgroundColor,
      ),
      child: MaterialButton(
        child: Row(
          children: [
            Container(
              height: 78,
              width: 78,
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white70, width: 2),
                image: DecorationImage(
                  image: AssetImage("assets/img_for_items/${StringConstants.listOfItems[item.name]!}"),
                    fit: BoxFit.cover,
                )
              ),
            ),
            Flexible(
              child: Text(
                ReductionName(item.name),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: ColorConstant.startScreenTextColor,
                ),
              ),
            ),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/item', arguments: item);
        },
      ),
    );
  }

  String ReductionName(String name) {
    if (StringConstants.listOfReductionItems[name] == null) {
      return name;
    }
    else {
      return StringConstants.listOfReductionItems[name]!;
    }
  }
}