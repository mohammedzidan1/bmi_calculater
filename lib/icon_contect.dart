import 'package:flutter/material.dart';
import 'constant.dart';
class IconContect extends StatelessWidget {

   IconContect({
    this.icon,this.lable
  }) ;
  final IconData icon ;
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style: labelTextStyle,
        )
      ],
    );
  }
}