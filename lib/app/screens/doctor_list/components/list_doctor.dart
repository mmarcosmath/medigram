import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'avaliation_doctor.dart';

class ListDoctor extends StatelessWidget {
  const ListDoctor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AvaliationDoctor(),
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
    );
  }
}
