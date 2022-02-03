import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:loola_store/constants/app_colors.dart';
import 'package:loola_store/view/screens/home/models/category_model.dart';
import 'package:loola_store/view/widgets/category_text.dart';

class CategoryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: categoryButtonModel
          .map(
            (item) => GestureDetector(
              onTap: () {
                //TODO : add Category button functionality here
              },
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  width: 82,
                  height: 85,
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage(item.image),
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: AppColors.darkGray.withOpacity(.4),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: CategoryText(
                              fontSize: 10,
                              text: item.categoryName,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
