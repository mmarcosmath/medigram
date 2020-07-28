import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AvaliationDoctor extends StatefulWidget {
  const AvaliationDoctor({
    Key key,
  }) : super(key: key);

  @override
  _AvaliationDoctorState createState() => _AvaliationDoctorState();
}

class _AvaliationDoctorState extends State<AvaliationDoctor> {
  double rat = 5;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmoothStarRating(
          allowHalfRating: true,
          onRated: (v) {
            setState(() {
              rat = v;
              print(v);
            });
          },
          starCount: 5,
          rating: rat,
          size: 20.0,
          isReadOnly: false,
          defaultIconData: Icons.star_border,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_half,
          color: Colors.amber,
          borderColor: Colors.amber,
          spacing: 0.0,
        ),
        Text(
          " (150)",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontSize: 14,
              color: Theme.of(context).splashColor,
            ),
          ),
        ),
      ],
    );
  }
}
