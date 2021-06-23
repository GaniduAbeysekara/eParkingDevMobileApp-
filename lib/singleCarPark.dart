import 'package:eparking/carParkView.dart';
import 'package:flutter/material.dart';

class SingleCarPark extends StatelessWidget {
  final String name;
  final int avaliabelSlot;

  SingleCarPark(this.name, this.avaliabelSlot);

  void selectCarPark(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return CarParkView();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCarPark(context),
      splashColor: Colors.red,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          decoration: BoxDecoration(color: Colors.greenAccent.shade100),
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
                  this.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
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
                  this.avaliabelSlot.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
