import 'package:eparking/models/dummy_car_slots.dart';
import 'package:flutter/material.dart';

class CarParkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("eParking")),
        body: GridView(
          children: DUMMY_CAR_SLOTS
              .map(
                (e) => Container(
                  padding: EdgeInsets.all(15),
                  height: 100,
                  width: 50,
                  color: Colors.lightGreen,
                  child: Text(e.slotNumber),
                ),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 50,
            childAspectRatio: 3 / 5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          padding: EdgeInsets.all(50),
        ));
  }
}
