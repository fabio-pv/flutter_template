import 'package:flutter/material.dart';

class TypographyUI extends StatelessWidget {
  const TypographyUI.normal(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
  });

  const TypographyUI.title(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 22,
  });

  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
