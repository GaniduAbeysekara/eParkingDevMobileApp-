import 'package:flutter/material.dart';

class SingleReservation extends StatelessWidget {
  final String carPark;
  final String countDown;

  const SingleReservation({required this.carPark, required this.countDown});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(carPark),
          ),
          Container(
            child: Text(countDown),
          ),
          Container(
            child: Text(
              "Extend",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          Container(
            child: Text(
              "Cancel",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
