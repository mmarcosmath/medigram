import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medigram/app/screens/components/table_item.dart';

class MedigramScreen extends StatefulWidget {
  @override
  _MedigramScreenState createState() => _MedigramScreenState();
}

class _MedigramScreenState extends State<MedigramScreen> {
  int _selectedScreenIndex = 0;

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.lerp(Color(0xFF5F73F6), Color(0xFF696FDF), 0.5),
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "Medigram",
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Theme.of(context).backgroundColor,
              ),
            ),
          ),
        ),
        actions: [
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
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            // height: MediaQuery.of(context).size.height * .35,
            child: SvgPicture.asset(
              "assets/back.svg",
              color: Color.lerp(Color(0xFF5F73F6), Color(0xFF696FDF), 0.5),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).backgroundColor,
        unselectedItemColor: Theme.of(context).splashColor,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.art_track,
            ),
            title: SizedBox(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: SizedBox(),
          ),
        ],
      ),
    );
  }
}
