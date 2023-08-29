import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class CardOfItem extends StatelessWidget{
  CardOfItem ({
    super.key,
    required this.item,
});
  var item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [ColorConstant.firstGradInMenu, ColorConstant.secondGradInMenu],
        ),
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
                border: Border.all(color: Colors.white, width: 2),
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
                style: const TextStyle(
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black26,
                      offset: Offset(0, 5),
                    ),
                  ]
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