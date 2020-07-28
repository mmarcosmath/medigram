import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarDoctorList {
  Widget appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Doctor List",
        style: GoogleFonts.rubik(
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
      actions: [
        IconButton(
          splashColor: Theme.of(context).splashColor.withOpacity(0.1),
          icon: Icon(
            Icons.notifications,
            color: Theme.of(context).backgroundColor,
          ),
          onPressed: () {
            print("object");
          },
        ),
        IconButton(
          splashColor: Theme.of(context).splashColor.withOpacity(0.1),
          icon: Icon(
            Icons.search,
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
