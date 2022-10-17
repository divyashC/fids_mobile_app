import 'package:flutter/material.dart';

class RoutesPage extends StatefulWidget {
  const RoutesPage({super.key});

  @override
  State<RoutesPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<RoutesPage> {
  var pathImg = "assets/images/path.png";
  var drukAirLogo = "assets/images/druk_air_logo.png";
  var bhutanAirlinesLogo = "assets/images/bhutan_airlines_logo.png";
  var mapsSmall = "assets/images/maps_small.png";

  @override
  Widget build(BuildContext context) {
    var fonstAwesomeIcons;
    var menu;
    return Scaffold(
        appBar: AppBar(
          title: const Text('FLIGHT ROUTES'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
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
                          child: const Text(
                            'PARO - KOLKATA',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text('PBH - CCU',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 45, left: 135),
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
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
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
                          child: const Text(
                            'PARO - DHAKA',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text('PBH - DAC',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 45, left: 150),
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
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
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
                          child: const Text(
                            'PARO - BAGDOGRA',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: const Text('PBH - IXB',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 45, left: 110),
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
          ),
        ]));
  }
}
