import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  const CategoryText(
      {required this.fontSize,
      required this.text,
      required this.fontWeight,
      required this.color});

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      textDirection: TextDirection.rtl,
      style:
          TextStyle(fontWeight: fontWeight, fontSize: fontSize, color: color),
    );
  }
}
