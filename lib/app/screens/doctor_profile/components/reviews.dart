import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Reviews extends StatelessWidget {
  const Reviews({
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
              Icons.rate_review,
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
                    "Reviews",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).splashColor,
                      ),
                    ),
                  ),
                ),
                _imagesReviews(context)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Row _imagesReviews(BuildContext context) {
  return Row(
    children: [
      Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Image.network(
          "http://www.albatrosfilm.com/cms/wp-content/gallery/people-profiles/dscn2363.jpg",
          height: 40,
          width: 40,
          fit: BoxFit.fitHeight,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Image.network(
          "http://www.albatrosfilm.com/cms/wp-content/gallery/people-profiles/dscn2363.jpg",
          height: 40,
          width: 40,
          fit: BoxFit.fitHeight,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Image.network(
          "http://www.albatrosfilm.com/cms/wp-content/gallery/people-profiles/dscn2363.jpg",
          height: 40,
          width: 40,
          fit: BoxFit.fitHeight,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Image.network(
          "http://www.albatrosfilm.com/cms/wp-content/gallery/people-profiles/dscn2363.jpg",
          height: 40,
          width: 40,
          fit: BoxFit.fitHeight,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: Stack(
          children: [
            Image.network(
              "http://www.albatrosfilm.com/cms/wp-content/gallery/people-profiles/dscn2363.jpg",
              height: 40,
              width: 40,
              fit: BoxFit.fitHeight,
            ),
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              color: Theme.of(context).splashColor.withOpacity(0.5),
              child: Text(
                "More",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
