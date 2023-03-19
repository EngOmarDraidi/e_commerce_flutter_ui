import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;

  const CustomText({
    required this.text,
    this.textStyle,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.decoration,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            decoration: decoration,
          ),
      textAlign: textAlign,
    );
  }
}
