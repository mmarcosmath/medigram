import 'package:flutter/material.dart';

class CustomGradient {
  LinearGradient getGradient(BuildContext context) {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Theme.of(context).accentColor, Theme.of(context).primaryColor],
    );
  }
}
