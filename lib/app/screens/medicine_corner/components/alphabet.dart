import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alphabet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width * 0.2,
        height: 50,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text(
                "A-Z",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).splashColor,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
