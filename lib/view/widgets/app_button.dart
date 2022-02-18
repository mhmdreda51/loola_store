import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {required this.text,
      required this.onPressed,
      required this.color,
      required this.width,
      required this.height,
      required this.paddingTop,
      required this.textColor});
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double width;
  final double height;
  final double paddingTop;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(top: paddingTop),
        decoration: BoxDecoration(
            color: color,
            border: Border(
              top: BorderSide(
                color: AppColors.whiteBink.withOpacity(1),
              ),
              bottom: BorderSide(
                color: AppColors.whiteBink.withOpacity(1),
              ),
              left: BorderSide(
                color: AppColors.whiteBink.withOpacity(1),
              ),
              right: BorderSide(
                color: AppColors.whiteBink.withOpacity(1),
              ),
            )),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
