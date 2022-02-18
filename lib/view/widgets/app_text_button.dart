import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loola_store/constants/app_colors.dart';

class AppTextButton extends StatelessWidget {
  AppTextButton(
      {required this.text, required this.onTap, required this.fontSize});

  final String text;
  final VoidCallback onTap;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style:
            GoogleFonts.cairo(color: AppColors.whiteColor, fontSize: fontSize),
      ),
    );
  }
}
