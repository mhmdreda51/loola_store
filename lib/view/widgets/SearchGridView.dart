import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:loola_store/view/screens/search/controller/search_cubit.dart';
import 'package:loola_store/view/widgets/search_card.dart';

class SearchGridView extends StatelessWidget {
  SearchGridView({
    required this.cubit,
    required this.gridList,
    required this.cardImage,
  });

  SearchCubit cubit;
  List gridList;
  String cardImage;

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: gridList
          .map(
            (item) => GestureDetector(
              onTap: () {
                //TODO : add Search button functionality here
              },
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                    width: 91,
                    height: 26,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: SearchCard(
                      text: item.text,
                      image: cardImage,
                    )),
              ),
            ),
          )
          .toList(),
    );
  }
}
