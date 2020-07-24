import 'package:flutter/material.dart';

import 'custom_button.dart';

class SingUpOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: CustomButton(
            label: "Sing up",
          ),
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width * .6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Always have an Account? Sing in",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Theme.of(context).backgroundColor,
                ),
              ),
              Text(
                "Or",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 11,
                  color: Theme.of(context).backgroundColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: Text("F"),
                  ),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: Text("T"),
                  ),
                  CircleAvatar(
                    backgroundColor: Theme.of(context).backgroundColor,
                    child: Text("G+"),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
