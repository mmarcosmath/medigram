import 'package:flutter/material.dart';
import 'package:medigram/app/screens/components/custom_button.dart';
import 'package:medigram/app/screens/utils/linear_gradient.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: CustomGradient().getGradient(context),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                height: 200,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).backgroundColor),
                child: Text(
                  "LOGO",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: CustomButton(
                  label: "Get Started",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
