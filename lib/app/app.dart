import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medigram/app/screens/doctor_list/doctor_list_screen.dart';
import 'package:medigram/app/screens/doctor_profile/doctor_profile_screen.dart';
import 'package:medigram/app/screens/select_category/select_category_screen.dart';

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
      home: DoctorProfileScreen(),
    );
  }
}
