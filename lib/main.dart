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
          Container(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Text(
                "CAR PARK LIST",
                style: TextStyle(color: textColor, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, color],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    padding: EdgeInsets.all(1),
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    padding: EdgeInsets.all(1),
                    child: Text(
                      "Avalible slots",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: textColor,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CarParkList(),
        ],
      ),
    );
  }
}
