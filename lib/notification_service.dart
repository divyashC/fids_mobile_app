import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
// import 'package:rxdart/subjects.dart';

class NotificationService {
  NotificationService();

  final _localNotificationService = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    tz.initializeTimeZones();

    const androidInitializationSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestAlertPermission: true,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    final InitializationSettings settings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings,
    );

    await _localNotificationService.initialize(settings,
        onSelectNotification: onSelectNotification);
  }

  Future<NotificationDetails> _notificationDetails() async {
    const AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channel_id', 'channel_name', 'description',
            importance: Importance.max,
            priority: Priority.high,
            playSound: true);

    const IOSNotificationDetails iosNotificationDetails =
        IOSNotificationDetails();

    return const NotificationDetails(
        android: androidNotificationDetails, iOS: iosNotificationDetails);
  }

  // Future<void> showNotification({
  //   required int id,
  //   required String title,
  //   required String body,
  // }) async {
  //   final notificationDetails = await _notificationDetails();
  //   await _localNotificationService.show(id, title, body, notificationDetails);
  // }

  Future<void> scheduleNotification(
      {required int id,
      required String title,
      required String body,
      required DateTime scheduledDate}) async {
    final notificationDetails = await _notificationDetails();
    await _localNotificationService.zonedSchedule(id, title, body,
        tz.TZDateTime.from(scheduledDate, tz.local), notificationDetails,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }

  Future onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) {
    return Future.value();
  }

  Future onSelectNotification(String? payload) {
    return Future.value();
  }

  // void onDidReceiveLocalNotification(
  //     int id, String? title, String? body, String? payload) {}

  // void onSelectNotification(String? payload) {}
}
