import 'package:flutter/material.dart';
import 'package:medigram/app/screens/components/doctor_description.dart';
import 'components/app_bar.dart';
import 'components/button_bottom.dart';
import 'components/button_option.dart';
import 'components/description_doctor_text.dart';
import 'components/reviews.dart';

class DoctorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDoctorProfile().appBar(context),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DoctorDescription(),
            DescriptionDoctorText(),
            Reviews(),
            ButtonOptions(),
            ButtonBottom()
          ],
        ),
      ),
    );
  }
}
