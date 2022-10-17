import 'package:flutter/material.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REMINDERS'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(children: <Widget>[
        Container(
            height: 160,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 243, 236, 232),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        '08:30 AM',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: const Text('20/10/2022',
                        style: TextStyle(fontSize: 19.0)),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 5, top: 15),
                      child: const Text(
                        'Druk Air - KB150',
                        style: TextStyle(fontSize: 15.0, color: Colors.black54),
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        'PBH - BKK ',
                        style: TextStyle(fontSize: 15.0, color: Colors.black54),
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 100),
                    child: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeTrackColor: Colors.redAccent,
                      activeColor: Colors.red,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 100, top: 50),
                      child: const Icon(Icons.more_horiz_outlined,
                          size: 40, color: Colors.redAccent))
                  // add icon
                ],
              ),
            ])),
        Container(
            height: 160,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 243, 236, 232),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 5, top: 5),
                      child: const Text(
                        '02:30 PM',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: const Text('28/10/2022',
                        style: TextStyle(fontSize: 19.0)),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 5, top: 15),
                      child: const Text(
                        'Bhutan Airlines - B3701',
                        style: TextStyle(fontSize: 15.0, color: Colors.black54),
                      )),
                  Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: const Text(
                        'BKK - CCU',
                        style: TextStyle(fontSize: 15.0, color: Colors.black54),
                      ))
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 100),
                    child: Switch(
                      value: true,
                      onChanged: (value) {},
                      activeTrackColor: Colors.redAccent,
                      activeColor: Colors.red,
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 100, top: 50),
                      child: const Icon(Icons.more_horiz_outlined,
                          size: 40, color: Colors.redAccent))
                  // add icon
                ],
              ),
            ]))
      ]),
    );
  }
}
