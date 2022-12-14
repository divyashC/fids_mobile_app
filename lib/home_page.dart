import 'dart:convert';

import 'package:fids_mobile_app/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:fids_mobile_app/reminder_page.dart';

Future<List<Data>> fetchData() async {
  var jsonResponse = [
    {
      "flightId": 0,
      "flightNo": "No Flight",
      "airline": "No Flight",
      "origin": "No Flight",
      "originIata": "No Flight",
      "departureTime": "No Flight",
      "departureTerminal": 0,
      "destination": "No Flight",
      "destinationIata": "No Flight",
      "arrivalTime": "No Flight",
      "arrivalTerminal": 0,
      "flightDate": "No Flight",
      "flightDuration": "No Flight",
    }
  ];
  try {
    final response =
        await http.get(Uri.parse("https://localhost:7178/api/FlightAPI"));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Data.fromJson(data)).toList();
    }
  } catch (e) {
    return jsonResponse.map((data) => Data.fromJson(data)).toList();
  }
  return jsonResponse.map((data) => Data.fromJson(data)).toList();
}

class Data {
  final int flightId;
  final String flightNo;
  final String airline;
  final String origin;
  final String originIata;
  final String departureTime;
  final int departureTerminal;
  final String destination;
  final String destinationIata;
  final String arrivalTime;
  final int arrivalTerminal;
  final String flightDate;
  final String flightDuration;

  Data({
    required this.flightId,
    required this.flightNo,
    required this.airline,
    required this.origin,
    required this.originIata,
    required this.departureTime,
    required this.departureTerminal,
    required this.destination,
    required this.destinationIata,
    required this.arrivalTime,
    required this.arrivalTerminal,
    required this.flightDate,
    required this.flightDuration,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      flightId: json['flightId'],
      flightNo: json['flightNo'],
      airline: json['airline'],
      origin: json['origin'],
      originIata: json['originIata'],
      departureTime: json['departureTime'],
      departureTerminal: json['departureTerminal'],
      destination: json['destination'],
      destinationIata: json['destinationIata'],
      arrivalTime: json['arrivalTime'],
      arrivalTerminal: json['arrivalTerminal'],
      flightDate: json['flightDate'],
      flightDuration: json['flightDuration'],
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  String _timeString = '';
  // String _hours = '';
  // String _mins = '';
  // String _secs = '';

  late Future<List<Data>> futureData;
  late final NotificationService notifService;

  @override
  void initState() {
    super.initState();
    notifService = NotificationService();
    notifService.initialize();
    futureData = fetchData();
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
  }

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
            margin: const EdgeInsets.only(left: 55.0, top: 40),
            child: Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 30),
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 85,
                  child: Text(
                      DateFormat('a').format(DateTime.now()) == "AM"
                          ? (int.parse(_timeString.substring(11, 13)) + 12)
                              .toString()
                          : _timeString.substring(11, 13),
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  height: 85,
                  child: const Text(":",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 30),
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 85,
                  child: Text(_timeString.substring(14, 16),
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5.0, right: 5.0),
                  height: 85,
                  child: const Text(":",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 30),
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 85,
                  child: Text(_timeString.substring(17, 19),
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            padding: const EdgeInsets.only(bottom: 30),
            height: MediaQuery.of(context).size.height - 85 - 56 - 24,
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: FutureBuilder<List<Data>>(
                future: futureData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Data>? data = snapshot.data;
                    if (data!.isEmpty) {
                      return Container(
                        margin: const EdgeInsets.only(
                            left: 100, top: 40, right: 100, bottom: 550),
                        padding: const EdgeInsets.only(
                            top: 30, left: 25, right: 20, bottom: 20),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 236, 232),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const Text(
                          'No Flights Found',
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            // italics text style
                          ),
                        ),
                      );
                    }
                    return ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (data[index].flightId == 0) {
                            return Container(
                              margin: const EdgeInsets.only(
                                  left: 100, top: 40, right: 100, bottom: 550),
                              padding: const EdgeInsets.only(
                                  top: 30, left: 25, right: 20, bottom: 20),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 243, 236, 232),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Text(
                                'No Flights Found',
                                style: TextStyle(
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold,
                                  // italics text style
                                ),
                              ),
                            );
                          }
                          double listMargin =
                              index == data.length - 1 ? 260 : 50;
                          return Container(
                            margin: EdgeInsets.only(
                                left: 20.0, right: 20.0, bottom: listMargin),
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 243, 236, 232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 450,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Image.asset(
                                        data[index].airline == "Druk Air"
                                            ? drukAirLogo
                                            : bhutanAirlinesLogo,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, top: 7),
                                        child: Text(
                                          data[index].flightNo.toString(),
                                          style: const TextStyle(
                                              fontSize: 19.0,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 20, top: 20),
                                  child: Text(
                                      data[index].flightDuration.toString(),
                                      style: const TextStyle(
                                          fontSize: 15, color: Colors.black)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                            data[index]
                                                .departureTime
                                                .toString()
                                                .substring(0, 5),
                                            style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      Text(
                                          '${data[index].originIata} - ${data[index].origin}',
                                          style: const TextStyle(fontSize: 14)),
                                    ]),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Image.asset(
                                        pathImg,
                                        fit: BoxFit.cover,
                                        height: 25,
                                        width: 90,
                                      ),
                                    ),
                                    Column(children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 10.0),
                                        child: Text(
                                            data[index]
                                                .arrivalTime
                                                .toString()
                                                .substring(0, 5),
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                      Text(
                                          '${data[index].destinationIata} - ${data[index].destination}',
                                          style: const TextStyle(fontSize: 14)),
                                    ]),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 20, bottom: 10),
                                  child: Text(
                                      data[index]
                                          .flightDate
                                          .toString()
                                          .substring(0, 10),
                                      style: const TextStyle(fontSize: 15)),
                                ),
                                const Divider(
                                  color: Colors.black26,
                                  height: 20,
                                  thickness: 0.8,
                                  indent: 30,
                                  endIndent: 30,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 10.0, left: 30),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 20.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                  width: 45,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          bottom: 10,
                                                          left: 15,
                                                          right: 15),
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.red,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                  child: Text(
                                                      data[index]
                                                          .departureTerminal
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.white))),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20.0),
                                                child: const Text(
                                                    "Departure Terminal",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                  width: 45,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          bottom: 10,
                                                          left: 15,
                                                          right: 15),
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.red,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                                  child: Text(
                                                      data[index]
                                                          .arrivalTerminal
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 25,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.white))),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 20.0),
                                                child: const Text(
                                                    "Arrival Terminal",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black)),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                    iconSize: 32,
                                    icon: const Icon(Icons.notifications,
                                        color: Colors.red),
                                    onPressed: () async {
                                      DateTime now = getDate(
                                          data[index].flightDate.toString(),
                                          data[index].departureTime.toString());
                                      await notifService.scheduleNotification(
                                        id: await notifService
                                                .getLastNotificationId() +
                                            1,
                                        title: 'Flight Reminder',
                                        body:
                                            '${data[index].airline} - ${data[index].flightNo}\n${data[index].originIata} - ${data[index].destinationIata}\n${data[index].flightDate.toString().substring(0, 10)} - ${data[index].departureTime.toString().substring(0, 5)} hrs',
                                        scheduledDate: now,
                                      );

                                      if (now.isBefore(DateTime.now())) {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                actionsPadding:
                                                    const EdgeInsets.only(
                                                        right: 20, bottom: 15),
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 25,
                                                        top: 10,
                                                        right: 25,
                                                        bottom: 15),
                                                titlePadding:
                                                    const EdgeInsets.only(
                                                        left: 25, top: 25),
                                                title: const Text(
                                                    'Reminder Not Added'),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                content: const Text(
                                                    'Reminder cannot be set for past date and time'),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      style: TextButton.styleFrom(
                                                          backgroundColor: Colors
                                                              .red,
                                                          foregroundColor: Colors
                                                              .white,
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5,
                                                                  right: 5,
                                                                  top: 10,
                                                                  bottom: 10),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))),
                                                      child: const Text('OK'))
                                                ],
                                              );
                                            });
                                      } else {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                actionsPadding:
                                                    const EdgeInsets.only(
                                                        right: 20, bottom: 15),
                                                contentPadding:
                                                    const EdgeInsets.only(
                                                        left: 25,
                                                        top: 10,
                                                        right: 25,
                                                        bottom: 15),
                                                titlePadding:
                                                    const EdgeInsets.only(
                                                        left: 25, top: 25),
                                                title: const Text(
                                                    'Reminder Added'),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                content: Text(
                                                    'Time: ${data[index].departureTime.toString().substring(0, 5)}\nDate: ${data[index].flightDate.toString().substring(0, 10)} \n${data[index].airline} - ${data[index].flightNo} \n${data[index].originIata} - ${data[index].destinationIata}'),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                        // change main.dart body to Reminders
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const ReminderPage()));
                                                      },
                                                      style: TextButton.styleFrom(
                                                          backgroundColor: Colors
                                                              .red,
                                                          foregroundColor: Colors
                                                              .white,
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 5,
                                                                  right: 5,
                                                                  top: 10,
                                                                  bottom: 10),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))),
                                                      child: const Text('OK'))
                                                ],
                                              );
                                            });
                                      }

                                      // await notifService.showNotification(
                                      //     id: 0,
                                      //     title: 'Flight Reminder',
                                      //     body:
                                      //         '${data[index].originIata} - ${data[index].origin} to ${data[index].destinationIata} - ${data[index].destination}\nDeparture - ${data[index].departureTime.toString().substring(0, 5)}',
                                      // );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  } else if (snapshot.hasError) {
                    // return Text("${snapshot.error}");
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 60, top: 40, right: 60, bottom: 350),
                      padding: const EdgeInsets.only(
                          top: 30, left: 25, right: 25, bottom: 10),
                      child: const Text(
                        'API Connection Refused',
                        style: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }
                  return Container(
                    margin: const EdgeInsets.only(
                        top: 80, left: 130, bottom: 500, right: 130),
                    child: const CircularProgressIndicator(),
                  );
                },
              ),
            ),
          )
        ]));
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
      // _hours = _timeString.substring(11, 13);
      // _mins = _timeString.substring(14, 16);
      // _secs = _timeString.substring(17, 19);
      // _hours = DateFormat('a').format(now) == "PM"
      //     ? (int.parse(_timeString.substring(11, 13)) + 12).toString()
      //     : _timeString.substring(11, 13);
    });
  }

  DateTime getDate(date, time) {
    return DateTime(
        int.parse(date.substring(0, 4)),
        int.parse(date.substring(5, 7)),
        int.parse(date.substring(8, 10)),
        int.parse(time.substring(0, 2)),
        int.parse(time.substring(3, 5)),
        00);
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('MM/dd/yyyy hh:mm:ss').format(dateTime);
  }
}
