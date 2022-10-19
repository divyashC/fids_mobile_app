import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  void initState() {
    super.initState();
  }

  var details = [
    {
      "key": 1,
      "question": "Can I book tickets with the app?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 2,
      "question": "Can I set multiple reminders?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 3,
      "question": "How frequently are the details updated?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 4,
      "question": "How far can I rely on this app?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 5,
      "question": "Are the flight route accurate?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 6,
      "question": "Is there any helpline contact details?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 7,
      "question": "How will this app benefit us?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 8,
      "question": "Will I get infos on flight cancellation?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 9,
      "question": "Is this app paid or free?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
    {
      "key": 10,
      "question": "Can I use this app on other OS or web?",
      "answer":
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Repudiandae nemo enim ratione dicta ipsa numquam harum provident necessitatibus praesentium ea debitis nulla laborum rem autem sunt, incidunt dignissimos eius, eveniet odit commodi corporis reprehenderit? Saepe, eaque aperiam. Libero adipisci alias incidunt necessitatibus tenetur, quo perspiciatis hic quod quaerat dolores quisquam magnam corrupti eius optio beatae ipsum ab. Ratione, inventore magni.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Help'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount: details.length,
          itemBuilder: (context, index) {
            return Container(
                height: 50,
                width: 40,
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 8),
                color: const Color.fromARGB(31, 155, 32, 32),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ExpansionTile(
                        title: Text(details[0]['question'].toString()),
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 10, right: 0),
                            child: Text(details[0]['answer'].toString()),
                          )
                        ],
                      ),
                    ),
                  ],
                ));
          },
        ));
  }
}
