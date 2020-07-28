import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/app_bar.dart';
import 'components/options_section.dart';

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
      appBar: AppBarMedigram().appBar(context),
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
          OptionsSection(),
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
