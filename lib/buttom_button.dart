import 'package:flutter/material.dart';
import 'constant.dart';

class ButtomBotton extends StatelessWidget {
  final Function onTap;
  final String Buttomtitile;

  ButtomBotton({@required this.onTap, @required this.Buttomtitile});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              "$Buttomtitile",
              style: kbuttonlabelTextStyle,
            )),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kbuttomContanerHeight,
        color: Color(0xffeb1555),
      ),
    );
  }
}
