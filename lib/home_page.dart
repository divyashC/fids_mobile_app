// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'art.dart';

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

  // Icon cusIcon = Icon(Icons.menu);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FLIGHT SCHEDULE'),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
            itemCount: flightNumber.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Card(
                    color: Color.fromARGB(255, 242, 242, 242),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset(
                            imgList[index],
                            fit: BoxFit.cover,
                          ),
                          // ignore: prefer_const_constructors
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                flightNumber[index],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              padding:
                                  const EdgeInsets.only(top: 30, bottom: 40),
                            ),
                            Container(
                              child: Text(
                                departure[index],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              padding:
                                  const EdgeInsets.only(top: 30, bottom: 10),
                            ),

                            //padding
                            Container(
                              child: Text(
                                origin[index],
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                              padding:
                                  const EdgeInsets.only(left: 10, bottom: 40),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                flightDuration[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              padding: const EdgeInsets.only(
                                  left: 50, top: 30, bottom: 50),
                            ),
                            Container(
                              child: Text(
                                date[index],
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              padding: const EdgeInsets.only(left: 40),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              child: Text(
                                arrival[index],
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              padding: const EdgeInsets.only(left: 40, top: 70),
                            ),
                            Container(
                              child: Text(
                                destination[index],
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                              padding: const EdgeInsets.only(left: 60, top: 10),
                            ),
                          ],
                        )
                      ],
                    )),
              );
            }));
  }
}
