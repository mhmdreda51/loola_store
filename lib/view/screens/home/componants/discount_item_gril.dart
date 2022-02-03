import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:loola_store/constants/app_colors.dart';
import 'package:loola_store/view/screens/home/models/item_model.dart';
import 'package:loola_store/view/widgets/app_button.dart';
import 'package:loola_store/view/widgets/category_text.dart';
import 'package:loola_store/view/widgets/status_row.dart';

class DicountItemGril extends StatelessWidget {
  const DicountItemGril({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      children: itemModel
          .map(
            (item) => GestureDetector(
              onTap: () {
                //TODO : add Category button functionality here
              },
              child: Container(
                width: double.infinity,
                height: 300,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 110,
                          width: double.infinity,
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(item.image),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 127,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite_border,
                                      ),
                                    ),
                                    CategoryText(
                                      fontSize: 12,
                                      text: item.realPrice.toString() + "EGP",
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      item.discountPrice.toString() + "EGP",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: AppColors.darkGray,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 15, left: 8, right: 5, bottom: 15),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 80,
                                      height: 30,
                                      child: CategoryText(
                                        fontSize: 7,
                                        text: item.categoryName,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35,
                                    ),
                                    StarsBar(
                                      stars: 3,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AppButton(
                        color: AppColors.darkBink,
                        text: "إضافة الي السلة",
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
