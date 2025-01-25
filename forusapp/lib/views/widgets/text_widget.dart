import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  final String myText;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final FontStyle fontStyle;
  const MyTextWidget({
    super.key,
    required this.myText,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 15, this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style:
          TextStyle(color: color, fontWeight: fontWeight, fontSize: fontSize, fontStyle: fontStyle),
    );
  }
}
