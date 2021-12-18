import 'package:flutter/material.dart';
import 'constant.dart';
class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onTap2;

  RoundIconButton({@required this.icon, @required this.onTap2});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onTap2,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
