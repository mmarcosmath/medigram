import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionDoctorText extends StatelessWidget {
  const DescriptionDoctorText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5, top: 5),
            child: Icon(
              Icons.info,
              color: Theme.of(context).accentColor,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Description",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).splashColor,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Rua 7, Quadra 20 - Proximo ssss ssssssssssss eeeeee rt tyu  ui rrrrrg hbbf sssssssssao ângular xxxxx sssssss ssssRua 7, Quadra 20 - Proximo ssss ssssssssssss eeeeee rt tyu  ui rrrrrg hbbf sssssssssao ssssssssao ângular xxxxx sssssss ssss",
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
