import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: const [
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList(),
          ColumnInList()
        ],
      ),
    );
  }
}

class ColumnInList extends StatelessWidget {
  const ColumnInList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.access_alarm_sharp),
        Icon(Icons.one_x_mobiledata_sharp),
        Icon(Icons.qr_code_2_rounded),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.access_alarm_sharp),
        Icon(Icons.one_x_mobiledata_sharp),
        Icon(Icons.qr_code_2_rounded),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.access_alarm_sharp),
        Icon(Icons.one_x_mobiledata_sharp),
        Icon(Icons.qr_code_2_rounded),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.access_alarm_sharp),
        Icon(Icons.one_x_mobiledata_sharp),
        Icon(Icons.qr_code_2_rounded),
        Icon(Icons.ac_unit_outlined),
        Icon(Icons.access_alarm_sharp),
        Icon(Icons.one_x_mobiledata_sharp),
        Icon(Icons.qr_code_2_rounded)
      ],
    );
  }
}
