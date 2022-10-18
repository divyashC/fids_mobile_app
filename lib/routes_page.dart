import 'package:flutter/material.dart';

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
      "duration": "04hrs 20mins"
    },
    {
      "key": 2,
      "originDestination": "Paro - Kolkata",
      "iata": "PBH - CCU",
      "duration": "04hrs 20mins"
    },
    {
      "key": 3,
      "originDestination": "Paro - Bagdogra",
      "iata": "PBH - IXB",
      "duration": "04hrs 20mins"
    },
    {
      "key": 4,
      "originDestination": "Paro - Dhaka",
      "iata": "PBH - DAC",
      "duration": "04hrs 20mins"
    },
    {
      "key": 5,
      "originDestination": "Paro - Kathmandu",
      "iata": "PBH - KTM",
      "duration": "04hrs 20mins"
    },
    {
      "key": 6,
      "originDestination": "Paro - Delhi",
      "iata": "PBH - DEL",
      "duration": "04hrs 20mins"
    },
    {
      "key": 7,
      "originDestination": "Paro - Bangkok",
      "iata": "PBH - BKK",
      "duration": "04hrs 20mins"
    },
    {
      "key": 8,
      "originDestination": "Paro - Singapore",
      "iata": "PBH - SIN",
      "duration": "04hrs 20mins"
    },
    {
      "key": 9,
      "originDestination": "Paro - Bumthang",
      "iata": "PBH - BUM",
      "duration": "04hrs 20mins"
    },
    {
      "key": 10,
      "originDestination": "Paro - Yonphula",
      "iata": "PBH - YOM",
      "duration": "04hrs 20mins"
    },
    {
      "key": 11,
      "originDestination": "Paro - Gaya",
      "iata": "PBH - GAY",
      "duration": "04hrs 20mins"
    },
    {
      "key": 12,
      "originDestination": "Paro - Gelephu",
      "iata": "PBH - GLU",
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
                            width: 180,
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
                          margin: const EdgeInsets.only(top: 50, left: 110),
                          child: Row(
                            children: const <Widget>[
                              Icon(
                                Icons.expand_circle_down,
                                color: Colors.red,
                                size: 30,
                              )
                            ],
                          ))
                    ],
                  ),
                )
              ]),
            );
          },
        ));
  }
}
