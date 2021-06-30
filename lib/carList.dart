import 'package:eparking/data/dummy_cars.dart';
import 'package:eparking/singleCar.dart';
import 'package:flutter/material.dart';

class CarList extends StatelessWidget {
  final color = const Color(0xffEBEBEB);
  final textColor = const Color(0xff707070);
  final String carParkName;
  final String parkingSlotNumber;

  const CarList({required this.carParkName, required this.parkingSlotNumber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("e-Parking")),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                carParkName.toUpperCase(),
                style: TextStyle(
                    color: textColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                parkingSlotNumber,
                style: TextStyle(
                    color: textColor,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [color.withOpacity(0.5), color],
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: DUMMY_CARS
                      .map(
                        (e) => SingleCar(e.name, e.plateNumber),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ));
  }
}
