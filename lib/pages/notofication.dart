
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

initialNotification() async{
  final fcm = FirebaseMessaging.instance;

  try{
    if (Platform.isIOS){
      await fcm.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );

      await fcm.setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      FirebaseMessaging.onMessage.listen((event) { });
      FirebaseMessaging.onBackgroundMessage((message) async{});
      FirebaseMessaging.onMessageOpenedApp.listen((event) { });
    }
  }catch(e){
    debugPrint(e.toString());
  }

  void _onMessage(RemoteMessage message){
    debugPrint ("Kamu menerima pesan ! ${message.notification?.title}");
    debugPrint("${message.notification?.body}");
  }

  Future<void> _onBackgroundMessage (RemoteMessage message) async{
    debugPrint ("Kamu menerima pesan ! ${message.notification?.title}");
    debugPrint("${message.notification?.body}");
  }

  FirebaseMessaging.onMessage.listen(_onMessage);
  FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
  

  void _onOpened(RemoteMessage message) async{
    final data = message.data;
    debugPrint ("Kamu bisa melakukan apapun pada data ! $data");
  }

  FirebaseMessaging.onMessageOpenedApp.listen(_onOpened);

  final message = await fcm.getInitialMessage();
  if (message != null){
    final data = message.data;
    debugPrint ("Kamu bisa melakukan apapun pada data! $data");
    debugPrint ("Token: ${(await FirebaseMessaging.instance.getToken()).toString()}");
  }
}
=======
import 'package:flutter/material.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: RaisedButton(
            color: Colors.green,
            onPressed: () {},
            child: Text(
              'REFRESH',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

