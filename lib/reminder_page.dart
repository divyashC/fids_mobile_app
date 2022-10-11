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
        body: Container(
            margin: const EdgeInsets.only(top: 120, left: 30),
            // add sizedbox from the code below
            child: SizedBox(
              width: 366,
              height: 145,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 366,
                          height: 145,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                            color: Color.fromRGBO(255, 242, 242, 1),
                          ))),
                  const Positioned(
                      top: 116,
                      left: 17,
                      child: Text(
                        'PBH - BKK ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(85, 85, 85, 1),
                            fontFamily: 'Helvetica',
                            fontSize: 14,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.1428571428571428),
                      )),
                  const Positioned(
                      top: 96,
                      left: 20,
                      child: Text(
                        'Druk Air - KB150',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(85, 85, 85, 1),
                            fontFamily: 'Helvetica',
                            fontSize: 14,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.1428571428571428),
                      )),
                  const Positioned(
                      top: 72,
                      left: 20,
                      child: Text(
                        '14-09-2022',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(25, 25, 25, 1),
                            fontFamily: 'Helvetica',
                            fontSize: 17,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 0.9411764705882353),
                      )),
                  const Positioned(
                      top: 19,
                      left: 14,
                      child: Text(
                        '08:30 AM',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Helvetica',
                            fontSize: 40,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                        // close all brackets
                      ))
                ],
              ),
            )));
  }
}
