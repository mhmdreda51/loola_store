import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Loola Store",
                style: TextStyle(
                    fontFamily: "ink-free",
                    color: AppColors.whiteColor,
                    fontSize: 31)),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            height: 30,
            width: 30,
            child: const Image(
              image: AssetImage("assets/dresss.png"),
            ),
          )
        ],
      ),
    );
  }
}
