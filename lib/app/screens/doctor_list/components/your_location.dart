import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourLocation extends StatelessWidget {
  const YourLocation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.maxFinite,
        height: 50,
        child: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).primaryColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Your Location",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).splashColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
