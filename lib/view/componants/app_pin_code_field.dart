import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../constants/app_colors.dart';

class AppPinCodeField extends StatelessWidget {
  late String otpCode;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      autoFocus: true,
      cursorColor: Colors.transparent,
      keyboardType: TextInputType.number,
      length: 5,
      obscureText: false,
      animationType: AnimationType.scale,

      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        disabledColor: Colors.transparent,
        borderRadius: BorderRadius.circular(0),
        fieldHeight: 52,
        fieldWidth: 52,
        borderWidth: 1,
        activeColor: AppColors.darkBink,
        inactiveColor: AppColors.darkBink,
        inactiveFillColor: Colors.transparent,
        activeFillColor: AppColors.darkBink,
        selectedColor: AppColors.darkBink,
        selectedFillColor: AppColors.darkBink,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.transparent,
      // enableActiveFill: true,
      textStyle: TextStyle(color: AppColors.darkBink, fontSize: 18),

      onCompleted: (submitedCode) {
        otpCode = submitedCode;
        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}
