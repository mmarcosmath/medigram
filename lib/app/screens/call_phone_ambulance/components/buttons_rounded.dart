import 'package:flutter/material.dart';

class ButtonsRounded extends StatelessWidget {
  const ButtonsRounded({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          margin: EdgeInsets.all(20),
          shape: CircleBorder(),
          elevation: 5,
          color: Colors.white,
          child: InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              maxRadius: 25,
              child: Icon(
                Icons.volume_up,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.all(20),
          shape: CircleBorder(),
          elevation: 5,
          color: Colors.red,
          child: InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              maxRadius: 25,
              child: Icon(
                Icons.phone,
                color: Theme.of(context).backgroundColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
