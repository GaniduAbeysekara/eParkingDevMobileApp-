import 'package:eparking/dummy_car_park.dart';
import 'package:eparking/singleCarPark.dart';
import 'package:flutter/material.dart';

class CarParkList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 50,
          child: Card(
            color: Colors.blueGrey,
            child: Text(
              "CAR PARK LIST",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  "Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                padding: EdgeInsets.all(5),
                child: Text(
                  "Avalible slots",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
            children: DUMMY_CAR_PARKS
                .map(
                  (e) => SingleCarPark(e.name, e.avaliableSlot),
                )
                .toList())
      ],
    );
  }
}
