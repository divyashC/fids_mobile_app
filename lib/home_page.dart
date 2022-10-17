// ignore_for_file: sort_child_properties_last
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

Future<List<Data>> fetchData() async {
  final response =
      await http.get(Uri.parse("https://localhost:7178/api/FlightAPI"));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Data.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
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
  late Future<List<Data>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
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
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 30),
            padding: const EdgeInsets.only(bottom: 30),
            height: 707,
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: FutureBuilder<List<Data>>(
                future: futureData,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Data>? data = snapshot.data;
                    return ListView.builder(
                        itemCount: data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(
                                left: 20.0, right: 20.0, bottom: 30),
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20.0, top: 20.0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 243, 236, 232),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            height: 220,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 10.0, top: 10.0),
                                      child: Image.asset(
                                        data?[index].airline == "Druk Air"
                                            ? drukAirLogo
                                            : bhutanAirlinesLogo,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, top: 7),
                                        child: Text(
                                          data![index].flightNo.toString(),
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
                                    // ignore: prefer_const_literals_to_create_immutables
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
                                          left: 15, right: 15),
                                      child: Image.asset(
                                        pathImg,
                                        fit: BoxFit.cover,
                                        height: 25,
                                        width: 90,
                                      ),
                                    ),
                                    // ignore: prefer_const_literals_to_create_immutables
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
                                      bottom: 20, top: 20),
                                  child: Text(
                                      data[index]
                                          .flightDate
                                          .toString()
                                          .substring(0, 10),
                                      style: const TextStyle(fontSize: 15)),
                                ),
                              ],
                            ),
                          );
                        });
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  // By default show a loading spinner.
                  return const CircularProgressIndicator();
                },
              ),
            ),
          )
        ]));
  }
}
