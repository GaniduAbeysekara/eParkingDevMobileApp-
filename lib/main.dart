import 'package:eparking/models/carPark.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EParking());
}

class EParking extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<CarPark> carParkList = [
    CarPark(id: "001asd", name: "Colombo city center", avaliableSlot: 18),
    CarPark(id: "002dbj", name: "One Galle Face", avaliableSlot: 24),
    CarPark(id: "003hkd", name: "Marino Mall", avaliableSlot: 26),
    CarPark(id: "005vhss", name: "Majestic City", avaliableSlot: 12),
    CarPark(id: "001asd", name: "Colombo city center", avaliableSlot: 18),
    CarPark(id: "002dbj", name: "One Galle Face", avaliableSlot: 24),
    CarPark(id: "003hkd", name: "Marino Mall", avaliableSlot: 26),
    CarPark(id: "005vhss", name: "Majestic City", avaliableSlot: 12),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('e-Parking'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.blue,
                child: Text("RESERVATION LIST"),
              ),
            ),
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
              children: carParkList.map((pk) {
                return Card(
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
                          pk.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
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
                          pk.avaliableSlot.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            )
          ],
        ));
  }
}
