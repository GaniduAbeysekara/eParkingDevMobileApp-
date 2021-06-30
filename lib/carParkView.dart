import 'package:eparking/carList.dart';
import 'package:eparking/data/dummy_car_slots.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarParkView extends StatelessWidget {
  final color = const Color(0xffEBEBEB);
  final textColor = const Color(0xff707070);
  final String carParkName;

  CarParkView(this.carParkName);
  String dropdownValue = 'One';

  void selectCarPark(BuildContext context, String number) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return CarList(
            carParkName: this.carParkName,
            parkingSlotNumber: number,
          );
        },
      ),
    );
  }

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
              this.carParkName,
              style: TextStyle(color: textColor, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GridView(
              children: DUMMY_CAR_SLOTS
                  .map((e) => InkWell(
                        onTap: () => selectCarPark(context, e.slotNumber),
                        splashColor: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: 100,
                          width: 50,
                          color: Colors.lightGreen,
                          child: Text(
                            e.slotNumber,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ))
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 50,
                childAspectRatio: 3 / 5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              padding: EdgeInsets.all(50),
            ),
          ),
        ],
      ),
    );
  }
}
