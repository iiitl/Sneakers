import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snks/tools/buton.dart';
import 'package:snks/tools/listOf.dart';
import 'package:snks/tools/myappbar.dart';
import 'package:snks/tools/shoecard.dart';

class MYProducts extends StatelessWidget {
  MYProducts({super.key});
  List<Map<String, dynamic>> shoes = [
    {
      "image": 'assets/images/1.png',
      "color": Color(0xffFDBE7F),
      "shoeName": "Air Max 290 red machine",
      "shoeType": "Running",
    },
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
    {
      "image": 'assets/images/4.png',
      "color": Color(0xff5A4C8D),
      "shoeName": "Air Jordan iV",
      "shoeType": "Lifestyle",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(
                title: "Products",
                actions: <Widget>[
                  IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () => null,
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.black,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: DefaultTabController(
                  length: 3,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 32.5, 15, 0),
                        child: Divider(
                          thickness: 2,
                          color: Color(0xffD4D4D4),
                        ),
                      ),
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: EdgeInsets.only(top: 35),
                        indicatorColor: Colors.black,
                        indicator: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        indicatorWeight: 1,
                        tabs: [
                          Tab(
                            child: Text('Best Sellers',
                                style: TextStyle(color: Colors.black)),
                          ),
                          Tab(
                            child: Text('New',
                                style: TextStyle(color: Colors.black)),
                          ),
                          Tab(
                            child: Text('Soon',
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                        labelColor: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 27,
              ),
              Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Container(
                      // alignment: Alignment/,
                      width: 335,
                      height: 121,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                      ),
                    ),
                    SizedBox(
                      height: 165,
                      child: Image.asset(
                        'assets/images/hovershoe.png',
                        // width: double.infinity,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(120, 17, 0, 0),
                      child: Text(
                        "Equinox Sales",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            // fontFamily: popings,
                            fontSize: 18,
                            letterSpacing: 0.32,
                            height: 1.025,
                            color: Color(0xff404040)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(128, 40, 0, 0),
                      child: Text(
                        "JORDAN VI \n     35% Discount",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w900,
                            // fontFamily: popings,
                            fontSize: 22,
                            letterSpacing: 0.32,
                            height: 1.025,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              ListOfWidgets(
                shoes: shoes,
              ),
            ]),
      ),
    );
  }
}
