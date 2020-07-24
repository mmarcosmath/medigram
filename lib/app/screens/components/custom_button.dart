import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  const CustomButton({
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: 40,
      // margin: EdgeInsets.symmetric(vertical: 50),
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Theme.of(context).textTheme.bodyText2.color,
          ),
        ),
      ),
    );
  }
}
