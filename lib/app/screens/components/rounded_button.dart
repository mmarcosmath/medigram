import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final BuildContext context;
  const RoundedButton({
    Key key,
    this.icon,
    this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: CircleBorder(),
      elevation: 5,
      color: Theme.of(context).accentColor,
      child: InkWell(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          maxRadius: 25,
          child: Icon(
            icon,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
    );
  }
}
