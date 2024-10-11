import 'package:flutter/material.dart';

class AppTextWidget extends StatelessWidget {
  const AppTextWidget({super.key,
  required this.text,
   this.fontWeight = FontWeight.w400,
   this.color = Colors.black,
   this.fontSize = 14,
   this.maxlines = 1
  });
final String text;
final FontWeight fontWeight;
final Color color;
final double fontSize;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,

      ),
    );
  }
}