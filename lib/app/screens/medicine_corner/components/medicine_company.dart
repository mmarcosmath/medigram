import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MedicineCompany extends StatelessWidget {
  const MedicineCompany({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width*0.7,
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
