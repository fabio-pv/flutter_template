import 'package:flutter/material.dart';

class TypographyUI extends StatelessWidget {
  const TypographyUI.normal(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 14,
    this.textAlign,
  });

  const TypographyUI.title(
    this.text, {
    super.key,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 22,
    this.textAlign,
  });

  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
      ),
    );
  }
}
