import 'package:flutter/material.dart';
import 'package:medigram/app/screens/components/rounded_button.dart';

class ButtonOptions extends StatelessWidget {
  const ButtonOptions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: (MediaQuery.of(context).size.width - 20) * .5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RoundedButton(
            icon: Icons.phone,
            context: context,
          ),
          RoundedButton(
            icon: Icons.videocam,
            context: context,
          ),
          RoundedButton(
            icon: Icons.message,
            context: context,
          ),
        ],
      ),
    );
  }
}
