import 'package:flutter/material.dart';
import 'package:loola_store/constants/app_colors.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/splash_screen.png",
            ),
          )),
        ),
        Container(
          color: AppColors.darkGray.withOpacity(.4),
        ),
      ],
    );
  }
}
