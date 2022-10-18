import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fids_mobile_app/main.dart';

class ReminderPage extends StatefulWidget {
  const ReminderPage({super.key});

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<List<PendingNotificationRequest>> getPendingNotifications() async {
    return await flutterLocalNotificationsPlugin.pendingNotificationRequests();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REMINDERS'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: ListView(children: <Widget>[
        SizedBox(
          height: 705,
          // height: 400,
          child: FutureBuilder<List<PendingNotificationRequest>>(
            future: getPendingNotifications(),
            builder: (BuildContext context,
                AsyncSnapshot<List<PendingNotificationRequest>> snapshot) {
              if (snapshot.hasData) {
                if (snapshot.data!.isEmpty) {
                  return Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 30.0, bottom: 540),
                    padding: const EdgeInsets.only(
                        left: 110.0, right: 110.0, top: 25.0),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 243, 236, 232),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(children: [
                      const Text('NO REMINDERS',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MyBottomNavigationBar()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          child: const Text('ADD REMINDER'),
                        ),
                      )
                    ]),
                  );
                }
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < snapshot.data!.length - 1 &&
                        snapshot.data![index].body ==
                            snapshot.data![index + 1].body) {
                      return Container();
                    }
                    return Container(
                        height: 160,
                        margin: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 30.0),
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 10.0, top: 10.0),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 243, 236, 232),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin:
                                      const EdgeInsets.only(left: 5, top: 5),
                                  child: Text(
                                    snapshot.data![index].body
                                        .toString()
                                        .split('\n')
                                        .last
                                        .substring(13, 22),
                                    style: const TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: Text(
                                    snapshot.data![index].body
                                        .toString()
                                        .split('\n')
                                        .last
                                        .substring(0, 10),
                                    style: const TextStyle(fontSize: 19.0)),
                              ),
                              Container(
                                  margin:
                                      const EdgeInsets.only(left: 5, top: 15),
                                  child: Text(
                                    snapshot.data![index].body
                                        .toString()
                                        .split('\n')
                                        .elementAt(0),
                                    style: const TextStyle(
                                        fontSize: 15.0, color: Colors.black54),
                                  )),
                              Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: Text(
                                    // display last line of payload
                                    snapshot.data![index].body
                                        .toString()
                                        .split('\n')
                                        .elementAt(1),
                                    style: const TextStyle(
                                        fontSize: 15.0, color: Colors.black54),
                                  ))
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    bottom: 15, left: 110),
                                child: IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red, size: 35.0),
                                  onPressed: () {
                                    var id = [];
                                    for (var i = 0;
                                        i < snapshot.data!.length;
                                        i++) {
                                      if (snapshot.data![index].body ==
                                          snapshot.data![i].body) {
                                        id.add(snapshot.data![i].id);
                                      }
                                    }
                                    for (var i = 0; i < id.length; i++) {
                                      flutterLocalNotificationsPlugin
                                          .cancel(id[i]);
                                    }
                                    setState(() {});
                                  },
                                ),
                              ),
                            ],
                          ),
                        ]));
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ]),
    );
  }
}
