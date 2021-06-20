import 'package:eparking/carParkList.dart';
import 'package:eparking/carParkView.dart';
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
      home: CarParkView(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('e-Parking'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.blue,
                child: Text("RESERVATION LIST"),
              ),
            ),
            CarParkList(),
          ],
        ));
  }
}
