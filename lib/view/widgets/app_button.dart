import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {required this.text, required this.onPressed, required this.color});
  final String text;
  final VoidCallback onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: 343,
        height: 55,
        padding: EdgeInsets.only(top: 12),
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
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
