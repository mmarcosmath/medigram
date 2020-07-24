import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitle extends StatelessWidget {
  final String label;
  const CustomTitle({
    Key key,
    this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 50, left: 20, bottom: 20),
      child: Text(
        label,
        style: GoogleFonts.rubik(
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
    );
  }
}
