import 'package:flutter/material.dart';
import 'package:medigram/app/screens/components/custom_textfield.dart';
import 'package:medigram/app/screens/components/custom_title.dart';
import 'package:medigram/app/screens/components/singup_option.dart';
import 'package:medigram/app/screens/utils/linear_gradient.dart';

class CreateAccountScreen extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTitle(
                label: "Create an Account",
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      label: "Full Name",
                    ),
                    CustomTextField(
                      label: "Email",
                    ),
                    CustomTextField(
                      label: "Password",
                    ),
                    CustomTextField(
                      label: "Confirm Password",
                    ),
                  ],
                ),
              ),
              Container(
                child: SingUpOption(),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
