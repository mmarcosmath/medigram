import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController ctrl;
  final String label;
  const CustomTextField({
    Key key,
    this.ctrl,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 50),
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(50),
          right: Radius.circular(50),
        ),
        color: Color(0xFFf6f6f6),
      ),
      child: TextField(
        controller: ctrl,
        cursorColor: Theme.of(context).accentColor,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: label,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          hintStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).splashColor,
          ),
          alignLabelWithHint: false,
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
