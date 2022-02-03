import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 9, color: Colors.black),
        ),
        Image(
          image: AssetImage(image),
          height: 20,
          width: 20,
        ),
      ],
    );
  }
}
