import 'package:flutter/material.dart';
import 'package:medigram/app/screens/utils/linear_gradient.dart';

import 'components/buttons_rounded.dart';
import 'components/doctor_image.dart';

class CallPhoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: CustomGradient().getGradient(context),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DoctorImage(),
            ButtonsRounded(),
          ],
        ),
      ),
    );
  }
}
