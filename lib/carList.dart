import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  final color = const Color(0xffEBEBEB);
  final textColor = const Color(0xff707070);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("e-Parking")),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: Text("Details"),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, color],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Text(
                "Car List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Text(
                "Add New Car",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ));
  }
}
