import 'package:eparking/carParkView.dart';
import 'package:flutter/material.dart';

class SingleCar extends StatelessWidget {
  final String name;
  final String plateNumber;
  final color = const Color(0xffEBEBEB);
  final textColor = const Color(0xff707070);

  SingleCar(this.name, this.plateNumber);

  void selectCarPark(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return CarParkView(name);
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
          decoration: BoxDecoration(color: color),
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
                padding: EdgeInsets.all(5),
                child: Text(
                  this.plateNumber.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
