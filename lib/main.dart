import 'package:eparking/Widgets/carParkListHeader.dart';
import 'package:eparking/carParkList.dart';
import 'package:eparking/resevationlistSection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EParking());
}

class EParking extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final color = const Color(0xffEBEBEB);
  final textColor = const Color(0xff707070);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('e-Parking'),
      ),
      body: Column(
        children: <Widget>[
          ReservationList(),
          CarParkListHeader(),
          CarParkList(),
        ],
      ),
    );
  }
}
