import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  final String origin;
  final String destination;
  final String duration;

  const Maps(
      {Key? key,
      required this.origin,
      required this.destination,
      required this.duration})
      : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  // String origin, destination, flightDuration;
  // _MapsState(
  //   this.origin,
  //   this.destination,
  //   this.flightDuration,
  // );

  var mapLarge = "assets/images/maps_large.png";
  var pathVertical = "assets/images/path_vertical.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FLIGHT ROUTE'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Image.asset(
                  mapLarge,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    children: [
                      Container(
                        height: 280,
                        margin: const EdgeInsets.only(left: 50.0),
                        padding: const EdgeInsets.only(top: 30.0, bottom: 40),
                        child: Image.asset(pathVertical, fit: BoxFit.cover),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 2.0),
                                  child: Text(
                                    widget.origin,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 1),
                                  child: const Text(
                                    'PBH - Paro',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 70.0, top: 70),
                                  child: Text(
                                    widget.duration,
                                    style: const TextStyle(fontSize: 20.0),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 1),
                                  child: const Text(
                                    'Destination',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10.0),
                                  child: Text(
                                    widget.destination,
                                    style: const TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
