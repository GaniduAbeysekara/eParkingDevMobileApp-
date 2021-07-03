import 'package:eparking/data/dummy_reservation.dart';
import 'package:eparking/singleReservation.dart';
import 'package:flutter/material.dart';

class ReservationList extends StatelessWidget {
  final textColor = const Color(0xff707070);
  final color = const Color(0xffEBEBEB);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              "RESERVATION LIST",
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
                  end: Alignment.bottomCenter),
            ),
            child: Row(
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
                    horizontal: 40,
                  ),
                  padding: EdgeInsets.all(1),
                  child: Text(
                    "Countdown",
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
        Container(
            width: double.infinity,
            height: 100,
            child: Column(
              children: DUMMY_RESERVATION
                  .map((e) => SingleReservation(
                        carPark: e.carParkName,
                        countDown: e.countDown,
                      ))
                  .toList(),
            ))
      ],
    );
  }
}
