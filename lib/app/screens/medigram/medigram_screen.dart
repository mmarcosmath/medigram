import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medigram/app/screens/components/table_item.dart';
import 'package:medigram/app/screens/utils/linear_gradient.dart';

class MedigramScreen extends StatefulWidget {
  @override
  _MedigramScreenState createState() => _MedigramScreenState();
}

class _MedigramScreenState extends State<MedigramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                // width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .4,
                child: SvgPicture.asset(
                  "assets/back.svg",
                  color: Color.lerp(Color(0xFF5F73F6), Color(0xFF696FDF), 0.5),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 50, left: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Medigram",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                            color: Theme.of(context).backgroundColor,
                          ),
                        ),
                      ),
                      IconButton(
                        splashColor: Theme.of(context).splashColor,
                        icon: Icon(
                          Icons.notifications,
                          color: Theme.of(context).backgroundColor,
                        ),
                        onPressed: () {
                          print("object");
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Table(
                    defaultColumnWidth: IntrinsicColumnWidth(),
                    children: [
                      TableRow(
                        children: [
                          CustomTableItem(
                            imageUrl:
                                "https://image.flaticon.com/icons/svg/3056/3056512.svg",
                            label: "Book a Doctor",
                            context: context,
                          ),
                          CustomTableItem(
                            imageUrl:
                                "https://image.flaticon.com/icons/svg/3022/3022827.svg",
                            label: "Buy Medicine",
                            context: context,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableItem(
                            imageUrl:
                                "https://image.flaticon.com/icons/svg/1320/1320311.svg",
                            label: "Ambulance",
                            context: context,
                          ),
                          CustomTableItem(
                            imageUrl:
                                "https://image.flaticon.com/icons/svg/1263/1263469.svg",
                            label: "Blood Bank",
                            context: context,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          CustomTableItem(
                            imageUrl:
                                "https://image.flaticon.com/icons/svg/1636/1636063.svg",
                            label: "FAQ",
                            context: context,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
