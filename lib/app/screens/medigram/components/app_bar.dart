import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarMedigram {
  Widget appBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color.lerp(Color(0xFF5F73F6), Color(0xFF696FDF), 0.5),
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          "Medigram",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          splashColor: Theme.of(context).splashColor,
          icon: Icon(
            Icons.notifications,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            print("object");
          },
        ),
      ],
    );
  }
}
