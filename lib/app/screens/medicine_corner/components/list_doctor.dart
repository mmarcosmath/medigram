import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                    '''https://e7.pngegg.com/pngimages/636/322/
                    png-clipart-pharmaceutical-drug-generic-drug
                    -remedio-pharmacy-pharmacist-tarja-pharmaceutical
                    -drug-medicine.png''',
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
                          "Medicine ",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ),
                        Text(
                          "Type",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).splashColor,
                            ),
                          ),
                        ),
                        Text(
                          '''If you need a medicine for drop in hair, 
                          you finded the best medicine for that''',
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
