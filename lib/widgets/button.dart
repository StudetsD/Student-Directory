import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {

  const CustomButton({
    super.key,
    required this.name,
    required this.group,
    required this.asset,
    required this.way,
    required this.marginTop,
  });

  final String name;
  final String group;
  final String asset;
  final String way;
  final double marginTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10, right: 10, top: marginTop),
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.5),
          shape: StadiumBorder(),
        ),
        onPressed: () {
          Navigator.pushNamed(context, way, arguments: group);

        },
        child: Row(
            children:[
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  asset,
                  color: Colors.indigo,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
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
    );
  }


}