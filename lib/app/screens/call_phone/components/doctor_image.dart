import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorImage extends StatelessWidget {
  const DoctorImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white38,
          ),
          child: FractionallySizedBox(
            heightFactor: 0.9,
            widthFactor: 0.9,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white54,
              ),
              child: FractionallySizedBox(
                heightFactor: 0.9,
                widthFactor: 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white70,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "http://www.pngall.com/wp-content/uploads/2018/05/Doctor-Free-Download-PNG.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          "Dr. Nome do Doutor",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              // fontWeight: FontWeight.w00,
              fontSize: 20,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        Text(
          "Estado",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        )
      ],
    );
  }
}
