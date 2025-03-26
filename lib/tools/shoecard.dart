import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoeCard extends StatelessWidget {
  ShoeCard(
      {super.key,
      required this.image,
      required this.color,
      required this.shoeName,
      required this.shoeType});
  String image;
  String shoeName;
  String shoeType;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 5, 30, 15),
      child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(18)),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                image,
                // width: double.infinity,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 8, 8, 8),
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        shoeName,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        shoeType,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                            color: Colors.white, fontSize: 12),
                      )
                    ]),
              ),
            ],
          )),
    );
  }
}
