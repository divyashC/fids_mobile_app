import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var pathImg = "assets/images/path.png";
  var drukAirLogo = "assets/images/druk_air_logo.png";
  var bhutanAirlinesLogo = "assets/images/bhutan_airlines_logo.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SEARCH FLIGHTS'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView(children: <Widget>[
          Container(
              height: 160,
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Search Flights...',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child:
                          const Text('Search', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
              ])),
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
