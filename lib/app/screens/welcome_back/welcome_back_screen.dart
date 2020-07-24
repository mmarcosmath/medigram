import 'package:flutter/material.dart';
import 'package:medigram/app/screens/components/custom_textfield.dart';
import 'package:medigram/app/screens/components/custom_title.dart';
import 'package:medigram/app/screens/components/singup_option.dart';
import 'package:medigram/app/screens/utils/linear_gradient.dart';

class WelcomeBackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: CustomGradient().getGradient(context),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTitle(
                label: "Welcome Back",
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * .5,
                height: 100,
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
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      label: "Email",
                    ),
                    CustomTextField(
                      label: "Password",
                    ),
                  ],
                ),
              ),
              Container(
                child: SingUpOption(),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
