import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({
    super.key,
    required this.title,
    this.actions,
  });
  final String title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        toolbarHeight: 75,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 15, 5, 17),
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  weight: 10,
                )),
          ),
        ),
        title: Text(
          title,
          textAlign: TextAlign.left,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w900,
              // fontFamily: popings,
              fontSize: 40,
              letterSpacing: 0.32,
              height: 1.025,
              color: Color(0xff404040)),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: actions,
      ),
    );
  }
}
