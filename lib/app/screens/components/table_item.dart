import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTableItem extends StatelessWidget {
  final String label;
  final String imageUrl;
  final BuildContext context;

  const CustomTableItem({
    Key key,
    this.label,
    this.context,
    this.imageUrl,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).backgroundColor,
      elevation: 10,
      margin: EdgeInsets.all(10),
      child: InkWell(
        splashColor: Theme.of(context).splashColor.withOpacity(0.1),
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.width * 0.3,
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.network(
                imageUrl,
                width: MediaQuery.of(context).size.width * 0.15,
              ),
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).hintColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
