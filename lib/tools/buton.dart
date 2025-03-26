import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Butons extends StatelessWidget {
  const Butons(String this.data, IconData this.icon);
  final String data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 353,
          height: 72,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Color(0xFF262626),
                  fontSize: 24,
                  // fontFamily: 'Poppins',
                  fontWeight: FontWeight.w900,
                  height: 0,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                icon,
                weight: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
