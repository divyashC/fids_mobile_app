// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'art.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pathImg = "assets/images/path.png";
  var drukAirLogo = "assets/images/druk_air_logo.png";
  var bhutanAirlinesLogo = "assets/images/bhutan_airlines_logo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('FLIGHT SCHEDULE'),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.red),
        body: ListView(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 243, 236, 232),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 220,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Image.asset(
                        drukAirLogo,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20, top: 7),
                        child: const Text(
                          'KB150',
                          style: TextStyle(
                              fontSize: 19.0, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: const Text('04 hr 10 min',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_literals_to_create_immutables
                    Column(children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: const Text('08:30',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      const Text('CCU - Kolkata',
                          style: TextStyle(fontSize: 15)),
                    ]),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      child: Image.asset(
                        pathImg,
                        fit: BoxFit.cover,
                        height: 25,
                        width: 100,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    Column(children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: const Text('12:40',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      const Text('BKK - Bangkok',
                          style: TextStyle(fontSize: 15)),
                    ]),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child:
                      const Text('18/10/2022', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 243, 236, 232),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 220,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Image.asset(
                        drukAirLogo,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 20, top: 7),
                        child: const Text(
                          'KB150',
                          style: TextStyle(
                              fontSize: 19.0, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child: const Text('04 hr 10 min',
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ignore: prefer_const_literals_to_create_immutables
                    Column(children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: const Text('08:30',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      const Text('CCU - Kolkata',
                          style: TextStyle(fontSize: 15)),
                    ]),
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15),
                      child: Image.asset(
                        pathImg,
                        fit: BoxFit.cover,
                        height: 25,
                        width: 100,
                      ),
                    ),
                    // ignore: prefer_const_literals_to_create_immutables
                    Column(children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: const Text('12:40',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      const Text('BKK - Bangkok',
                          style: TextStyle(fontSize: 15)),
                    ]),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, top: 20),
                  child:
                      const Text('18/10/2022', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
          )
        ]));
  }
}
