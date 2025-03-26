import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:snks/tools/myappbar.dart';

import '../../tools/listOf.dart';

class Favourites extends StatelessWidget {
  Favourites({super.key});
  List<Map<String, dynamic>> shoes = [
    {
      "image": 'assets/images/4.png',
      "color": Color(0xff5A4C8D),
      "shoeName": "Air Jordan iV",
      "shoeType": "Lifestyle",
    },
    {
      "image": 'assets/images/1.png',
      "color": Color(0xffFDBE7F),
      "shoeName": "Air Max 290 red machine",
      "shoeType": "Running",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            MyAppBar(title: "Favourites"),
            ListOfWidgets(
              shoes: shoes,
            )
          ],
        ),
      ),
    );
  }
}
