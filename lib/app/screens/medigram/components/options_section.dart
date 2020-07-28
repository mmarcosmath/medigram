import 'package:flutter/material.dart';
import 'package:medigram/app/screens/components/table_item.dart';

class OptionsSection extends StatelessWidget {
  const OptionsSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Table(
              defaultColumnWidth: IntrinsicColumnWidth(),
              children: [
                TableRow(
                  children: [
                    CustomTableItem(
                      imageUrl:
                          "https://image.flaticon.com/icons/svg/3056/3056512.svg",
                      label: "Book a Doctor",
                      context: context,
                    ),
                    CustomTableItem(
                      imageUrl:
                          "https://image.flaticon.com/icons/svg/3022/3022827.svg",
                      label: "Buy Medicine",
                      context: context,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    CustomTableItem(
                      imageUrl:
                          "https://image.flaticon.com/icons/svg/1320/1320311.svg",
                      label: "Ambulance",
                      context: context,
                    ),
                    CustomTableItem(
                      imageUrl:
                          "https://image.flaticon.com/icons/svg/1263/1263469.svg",
                      label: "Blood Bank",
                      context: context,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    CustomTableItem(
                      imageUrl:
                          "https://image.flaticon.com/icons/svg/1636/1636063.svg",
                      label: "FAQ",
                      context: context,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
