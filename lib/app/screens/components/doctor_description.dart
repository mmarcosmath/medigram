import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDescription extends StatelessWidget {
  const DoctorDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.only(
              top: 5,
              right: 5,
              left: 5,
              bottom: 0,
            ),
            color: Colors.white,
            child: Image.network(
              "http://www.pngall.com/wp-content/uploads/2018/05/Doctor-Free-Download-PNG.png",
              height: 120,
              width: 100,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr.Alguma Coisa",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ),
                Text(
                  "Dentist (Specialist)",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  "Rua 7, Quadra 20 - Proximo aossssssssssss ângular xxxxx",
                  maxLines: 2,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).splashColor,
                    ),
                  ),
                ),
                Text(
                  "Experience",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).splashColor,
                    ),
                  ),
                ),
                Text(
                  "Preço",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).splashColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
