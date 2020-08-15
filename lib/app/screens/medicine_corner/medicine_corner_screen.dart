import 'package:flutter/material.dart';
import 'package:medigram/app/screens/medicine_corner/components/alphabet.dart';
import 'components/app_bar.dart';
import 'components/list_doctor.dart';
import 'components/medicine_company.dart';

class DoctorListScreen extends StatefulWidget {
  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  double rat = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMedicineCorner().appBar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                Alphabet(),
                MedicineCompany(),
              ],
            ),
            ListDoctor(),
          ],
        ),
      ),
    );
  }
}
