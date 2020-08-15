import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmbulanceImage extends StatelessWidget {
  const AmbulanceImage({
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
                      "https://pngimg.com/uploads/ambulance/ambulance_PNG49.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(
          "Ambulance Service",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontSize: 20,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        Text(
          "State",
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
