import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DoctorListScreen extends StatefulWidget {
  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  double rat = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Doctor List",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        actions: [
          IconButton(
            splashColor: Theme.of(context).splashColor.withOpacity(0.1),
            icon: Icon(
              Icons.notifications,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              print("object");
            },
          ),
          IconButton(
            splashColor: Theme.of(context).splashColor.withOpacity(0.1),
            icon: Icon(
              Icons.search,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              print("object");
            },
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            Card(
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
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      width: 50,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.network(
                            "http://www.pngall.com/wp-content/uploads/2018/05/Doctor-Free-Download-PNG.png",
                            height: 120,
                            width: 100,
                            alignment: Alignment.bottomCenter,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 0),
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      color: Theme.of(context).splashColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Rua 7, Quadra 20 - Proximo ao ângular xxxxx sssssss ssss",
                                  softWrap: true,
                                  maxLines: 2,
                                  textWidthBasis: TextWidthBasis.longestLine,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).splashColor,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
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
                                              color:
                                                  Theme.of(context).splashColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    IconButton(
                                      splashColor: Theme.of(context)
                                          .splashColor
                                          .withOpacity(0.1),
                                      icon: Icon(
                                        Icons.arrow_forward_ios,
                                      ),
                                      onPressed: () {
                                        print("object");
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
