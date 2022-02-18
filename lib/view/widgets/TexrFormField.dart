import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';

class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final Function validator;
  final String hintText;
  final bool obscureText;

  const AuthTextFromField({
    required this.controller,
    required this.validator,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // obscureText: obscureText,
      cursorColor: AppColors.darkBink,
      obscureText: obscureText,

      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      style: const TextStyle(color: Colors.white, fontSize: 16),
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        hintText: hintText,
        contentPadding: EdgeInsets.all(10),
        hintTextDirection: TextDirection.rtl,
        hintStyle: const TextStyle(
          color: AppColors.darkBink,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
        filled: false,
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.darkBink),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.darkBink),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.darkBink),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: AppColors.darkBink),
        ),
      ),
    );
  }
}
