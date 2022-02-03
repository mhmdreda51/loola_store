import 'package:flutter/material.dart';

AppBar homeAppBar({required String text, required Widget icon}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text(
      text,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    actions: [
      Padding(padding: const EdgeInsets.only(right: 5, top: 8), child: icon),
    ],
  );
}
