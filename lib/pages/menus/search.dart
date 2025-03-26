import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snks/tools/listOf.dart';
import 'package:snks/tools/myappbar.dart';

class saearchMenu extends StatelessWidget {
  saearchMenu({super.key});
  TextEditingController search = TextEditingController();
  List<Map<String, dynamic>> shoes = [
    {
      "image": 'assets/images/3.png',
      "color": Color(0xff525252),
      "shoeName": "Air Max 90 pegasus 37",
      "shoeType": "Running",
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyAppBar(title: "Look For"),
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0, 8, 32, 8),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // Border color
                borderRadius:
                    BorderRadius.circular(8.0), // Optional: Border radius
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  hintText: 'Enter your text here',
                  border:
                      InputBorder.none, // Hide the default border of TextField
                  contentPadding: EdgeInsets.all(
                      8.0), // Optional: Padding inside the TextField
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 15, 0, 5),
            child: Text(
              "brands",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xff737373)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: SizedBox(height: 72, child: ListOfBrands()),
          ),
          // Padding(
          // padding: const EdgeInsets.only(left: 35.0),
          // child: Row(
          //   children: [
          //     ListOfBrands(
          //       image: "assets/images/brand1.png",
          //     ),
          //     ListOfBrands(
          //       image: "assets/images/brand2.png",
          //     ),
          //     ListOfBrands(
          //       image: "assets/images/brand3.png",
          //     ),
          //     ListOfBrands(
          //       image: "assets/images/brand5.png",
          //     ),
          //   ],
          // ),
          // child: ListOfBrands(),
          // ),

          ListOfWidgets(shoes: shoes),
        ],
      ),
    );
  }
}
