import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medigram/app/screens/components/table_item.dart';

class SelectCategory extends StatefulWidget {
  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Select Category",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        actions: [
          IconButton(
            splashColor: Theme.of(context).splashColor.withOpacity(0.1),
            icon: Icon(
              Icons.notifications,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              print("object");
            },
          ),
          IconButton(
            splashColor: Theme.of(context).splashColor.withOpacity(0.1),
            icon: Icon(
              Icons.search,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              print("object");
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 20),
          child: Table(
            defaultColumnWidth: IntrinsicColumnWidth(),
            children: [
              TableRow(
                children: [
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/2867/2867442.svg",
                    label: "Anatomists",
                    context: context,
                  ),
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/2362/2362076.svg",
                    label: "Cardiologist",
                    context: context,
                  ),
                ],
              ),
              TableRow(
                children: [
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/361/361508.svg",
                    label: "Dermathologists",
                    context: context,
                  ),
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/2734/2734170.svg",
                    label: "Diabetologists",
                    context: context,
                  ),
                ],
              ),
              TableRow(
                children: [
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/3209/3209097.svg",
                    label: "Dentist",
                    context: context,
                  ),
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/484/484781.svg",
                    label: "Urologist",
                    context: context,
                  ),
                ],
              ),
              TableRow(
                children: [
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/893/893530.svg",
                    label: "Neurologists",
                    context: context,
                  ),
                  CustomTableItem(
                    imageUrl:
                        "https://image.flaticon.com/icons/svg/224/224812.svg",
                    label: "Sexologists",
                    context: context,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
