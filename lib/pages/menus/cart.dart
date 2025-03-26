import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:snks/tools/buton.dart';
import 'package:snks/tools/listOf.dart';
import 'package:snks/tools/myappbar.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  List<Map<String, dynamic>> shoes = [
    {
      "image": 'assets/images/2.png',
      "color": Color(0xffC0A4A2),
      "shoeName": "Air Max pegasus 37",
      "shoeType": "Lifestyle",
    },
    {
      "image": 'assets/images/3.png',
      "color": Color(0xff525252),
      "shoeName": "Air Max 90 pegasus 37",
      "shoeType": "Running",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            MyAppBar(
              title: "Cart",
            ),
            ListOfWidgets(shoes: shoes),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 32, 32, 120),
              child: Butons("Checkout", Icons.shopping_bag),
            )
          ],
        ),
      ),
    );
  }
}
