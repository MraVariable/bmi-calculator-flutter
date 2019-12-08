import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.tapFunction});
  final IconData icon;
  final Function tapFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kButtonSize,
      height: kButtonSize,
      child: RawMaterialButton(
        onPressed: () {
          tapFunction();
        },
        elevation: 6.0,
        child: Icon(
          icon,
        ),
        shape: CircleBorder(),
        fillColor: Color(0xFF4C4F5E),
      ),
    );
  }
}
