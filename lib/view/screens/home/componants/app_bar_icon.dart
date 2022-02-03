import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loola_store/constants/app_colors.dart';

class AppBarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FaIcon(
          FontAwesomeIcons.shoppingBag,
          color: Colors.black,
          size: 22,
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.darkBink,
            ),
            child: Text(
              '1',
              style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
