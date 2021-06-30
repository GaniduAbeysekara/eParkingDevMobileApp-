import 'package:eparking/data/dummy_car_park.dart';
import 'package:eparking/singleCarPark.dart';
import 'package:flutter/material.dart';

class CarParkList extends StatelessWidget {
  final color = const Color(0xffEBEBEB);
  final textColor = const Color(0xff707070);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: DUMMY_CAR_PARKS
              .map(
                (e) => SingleCarPark(e.name, e.avaliableSlot),
              )
              .toList(),
        ),
      ),
    );
  }
}
