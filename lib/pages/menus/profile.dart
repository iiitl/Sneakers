import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snks/tools/myappbar.dart';

class MyProfile extends StatelessWidget {
  MyProfile({super.key});
  List<String> prof = [
    "Security and privacy",
    "Add Address",
    "bank accounts",
    "Promotions and returns",
    "Help",
    "Delete Data"
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          MyAppBar(
            title: "My Profile",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: const CircleAvatar(
                  radius: 48,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("assets/images/prof.jpg"),
                  // child: Image.asset(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      "Amaan",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w900,
                          // fontFamily: popings,
                          fontSize: 24,
                          letterSpacing: 0,
                          height: 1,
                          color: Color(0xff404040)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "IIIT Lucknow",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.normal,
                            // fontFamily: popings,
                            fontSize: 16,
                            letterSpacing: 0,
                            height: 1,
                            color: Color(0xff404040)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(32),
              shrinkWrap: true,
              itemCount: prof.length,
              itemBuilder: (context, i) => ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF5F5F5),
                      shadowColor: Colors.white,
                      // foregroundColor: Colors.white,
                      elevation: 0,

                      // disabledBackgroundColor:
                    ),
                    onPressed: () => null,
                    child: Text(
                      prof[i],

                      textAlign: TextAlign.center,
                      // selectionColor: Colors.white,
                      style: GoogleFonts.inter(
                          fontSize: 18, color: Colors.black54),
                    ),
                  )),
        ],
      ),
    );
  }
}

/** Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xffF5F5F5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          prof[i],
                          textAlign: TextAlign.center,
                          // selectionColor: Colors.white,
                          style: GoogleFonts.inter(fontSize: 18),
                        ),
                      ),
                    ) */
