import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var flightNumber = ["KB150", "B3701", "B3700"];
  var flightDuration = ["04 hr 10 min", "02 hr 30 min", "01 hr 05 min"];
  var origin = ["PBH - Paro", "BKK - Bangkok", "PBH - Paro"];
  var departure = ["0830", "0630", "1030"];
  var destination = ["BKK - Bangkok", "CCU - Kolkata", "CCU - Kolkata"];
  var arrival = ["1240", "0930", "1140"];
  var date = ["14-09-2022", "19-09-2022", "23-09-2022"];
  var airline = ["Druk Air", "Bhutan Airlines", "Bhutan Airlines"];
  var imgList = [
    "assets/images/druk_air_logo.png",
    "assets/images/bhutan_airlines_logo.png",
    "assets/images/bhutan_airlines_logo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FLIGHT SCHEDULE'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
            itemCount: flightNumber.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Card(Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(imgList[index]),
                    ),
                  ],
                )),
              );
            }));
  }
}
