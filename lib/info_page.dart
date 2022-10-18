import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Help'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: <Widget>[
            Column(
              children: [
                Container(
                  height: 50,
                  width: 400,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 2.0,
                        spreadRadius: 0.0,
                        offset:
                            Offset(0.0, 0.0), // shadow direction: bottom right
                      )
                    ],
                    color: Color.fromARGB(255, 228, 225, 223),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  margin:
                      const EdgeInsets.only(left: 30.0, right: 20.0, top: 30.0),
                  padding: const EdgeInsets.only(left: 40.0, top: 15.0),
                  child: const Text(
                    'What is the purpose of this app?',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
