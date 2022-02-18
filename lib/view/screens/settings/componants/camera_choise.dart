import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loola_store/constants/app_colors.dart';
import 'package:loola_store/view/screens/settings/componants/sheet_devidier.dart';

import '../../../widgets/category_text.dart';
import '../controller/settings_cubit.dart';

class CameraChoise extends StatelessWidget {
  final SettingsCubit cubit;
  CameraChoise({required this.cubit});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 170,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SheetDevidier(),
            const SizedBox(height: 10),
            const CategoryText(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              text: "عن طريق",
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => cubit.pickImageFromCamera(),
              splashColor: AppColors.whiteBink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CategoryText(
                    fontSize: 13,
                    text: "الكاميرا",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FaIcon(
                    FontAwesomeIcons.camera,
                    color: AppColors.darkBink,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            InkWell(
              splashColor: AppColors.whiteBink,
              onTap: () => cubit.pickImageFromGallery(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  CategoryText(
                    fontSize: 13,
                    text: "الجالرى",
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FaIcon(
                    FontAwesomeIcons.images,
                    color: AppColors.darkBink,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
