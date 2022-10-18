import 'package:flutter/material.dart';

import 'map.dart';

class RouteData {
  String origin, destination, flightDuration;
  RouteData(
    this.origin,
    this.destination,
    this.flightDuration,
  );
}

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<RoutesPage> {
  var routeData = [
    {
      "key": 1,
      "originDestination": "Paro - Guwahati",
      "iata": "PBH - GAU",
      "origin": "PBH - Paro",
      "destination": "GAU - Guwahati",
      "duration": "04hrs 20mins"
    },
    {
      "key": 2,
      "originDestination": "Paro - Kolkata",
      "iata": "PBH - CCU",
      "origin": "PBH - Paro",
      "destination": "CCU - Kolkata",
      "duration": "04hrs 20mins"
    },
    {
      "key": 3,
      "originDestination": "Paro - Bagdogra",
      "iata": "PBH - IXB",
      "origin": "PBH - Paro",
      "destination": "IXB - Bagdogra",
      "duration": "04hrs 20mins"
    },
    {
      "key": 4,
      "originDestination": "Paro - Dhaka",
      "iata": "PBH - DAC",
      "origin": "PBH - Paro",
      "destination": "DAC - Dhaka",
      "duration": "04hrs 20mins"
    },
    {
      "key": 5,
      "originDestination": "Paro - Kathmandu",
      "iata": "PBH - KTM",
      "origin": "PBH - Paro",
      "destination": "KTM - Kathmandu",
      "duration": "04hrs 20mins"
    },
    {
      "key": 6,
      "originDestination": "Paro - Delhi",
      "iata": "PBH - DEL",
      "origin": "PBH - Paro",
      "destination": "DEL - Delhi",
      "duration": "04hrs 20mins"
    },
    {
      "key": 7,
      "originDestination": "Paro - Bangkok",
      "iata": "PBH - BKK",
      "origin": "PBH - Paro",
      "destination": "BKK - Bangkok",
      "duration": "04hrs 20mins"
    },
    {
      "key": 8,
      "originDestination": "Paro - Singapore",
      "iata": "PBH - SIN",
      "origin": "PBH - Paro",
      "destination": "SIN - Singapore",
      "duration": "04hrs 20mins"
    },
    {
      "key": 9,
      "originDestination": "Paro - Bumthang",
      "iata": "PBH - BUM",
      "origin": "PBH - Paro",
      "destination": "BUM - Bumthang",
      "duration": "04hrs 20mins"
    },
    {
      "key": 10,
      "originDestination": "Paro - Yonphula",
      "iata": "PBH - YOM",
      "origin": "PBH - Paro",
      "destination": "YOM - Yonphula",
      "duration": "04hrs 20mins"
    },
    {
      "key": 11,
      "originDestination": "Paro - Gaya",
      "iata": "PBH - GAY",
      "origin": "PBH - PARO",
      "destination": "GAY - Gaya",
      "duration": "04hrs 20mins"
    },
    {
      "key": 12,
      "originDestination": "Paro - Gelephu",
      "iata": "PBH - GLU",
      "origin": "PBH - Paro",
      "destination": "GLU - Gelephu",
      "duration": "04hrs 20mins"
    }
  ];

  var pathImg = "assets/images/path.png";
  var drukAirLogo = "assets/images/druk_air_logo.png";
  var bhutanAirlinesLogo = "assets/images/bhutan_airlines_logo.png";
  var mapsSmall = "assets/images/maps_small.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FLIGHT ROUTES'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount: routeData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: index == 0 ? 50 : 10),
              height: 250,
              child: Column(children: [
                Image.asset(
                  mapsSmall,
                  fit: BoxFit.contain,
                ),
                Container(
                  width: 350,
                  padding: const EdgeInsets.only(left: 20.0),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 243, 236, 232),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 3, top: 20),
                            width: 150,
                            child: Text(
                              routeData[index]['originDestination'].toString(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            child: Text(routeData[index]["iata"].toString(),
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.black)),
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.only(
                              top: 30, left: 90, bottom: 10),
                          child: Row(children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      // creae const Maps and pass origin as routeData[index]["origin"] and destination as routeData[index]["destination"] and duration as routeData[index]["duration"]
                                      builder: (context) => Maps(
                                          origin: routeData[index]["origin"]
                                              .toString(),
                                          destination: routeData[index]
                                                  ["destination"]
                                              .toString(),
                                          duration: routeData[index]["duration"]
                                              .toString())),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                padding: const EdgeInsets.all(8.0),
                                minimumSize: const Size(20, 20),
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 20,
                              ),
                            ),
                          ])),
                    ],
                  ),
                ),
              ]),
            );
          },
        ));
  }
}
