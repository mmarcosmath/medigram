import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medigram/app/screens/create_account/create_account_screen.dart';
import 'package:medigram/app/screens/get_started/get_started_screen.dart';
import 'package:medigram/app/screens/medigram/medigram_screen.dart';
import 'package:medigram/app/screens/welcome_back/welcome_back_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Medigram",
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.openSansTextTheme().copyWith(
          bodyText2: TextStyle(
            color: Color(0xFF2E2E2E),
          ),
        ),
        primaryColor: Color(0xFF696fdf),
        accentColor: Color(0xFF5F73F6),
        splashColor: Color(0xFF585858),
        hintColor: Color(0xFF2E2E2E),
        scaffoldBackgroundColor: Color(0xFFf6f6f6),
        backgroundColor: Color(0xFFf6f6f6),
      ),
      debugShowCheckedModeBanner: false,
      home: MedigramScreen(),
    );
  }
}
