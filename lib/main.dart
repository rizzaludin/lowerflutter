
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:persebaya_selamanya/firebase_options.dart';
import 'package:persebaya_selamanya/pages/login.dart';

import 'package:persebaya_selamanya/pages/notofication.dart';
import 'package:provider/provider.dart';
import 'package:persebaya_selamanya/pages/penilain_service.dart';


Future<void> _firebaseMessagingBackgroundHandler(
  RemoteMessage message) async {
  
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  print('Handling a background message ${message.messageId}');
}

 AndroidNotificationChannel? channel;

 FlutterLocalNotificationsPlugin?  flutterLocalNotificationsPlugin;



final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email'
    ]
);


void main() async {Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await initialNotification();
  await requestPermission();

  // runApp(const MyApp());
}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
 const MyApp({Key? key}) : super(key: key);

  @override
  void initState(){
     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin!.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel!.id,
              channel!.name,
              
              
              icon: 'launch_background',
            ),
          ),
        );
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('A new onMessageOpenedApp event was published!');
     
      
    });
   
    
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider<penilaianservice>(
      
      create: (_) => penilaianservice(),
      child: MaterialApp(
      home: loginpage(),
      debugShowCheckedModeBanner: false,

      ),
    
    );
  }
}
Future<void> requestPermission() async{
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }
}
=======
import 'package:flutter/material.dart';
import 'package:persebaya_selamanya/pages/home.dart';
import 'package:persebaya_selamanya/pages/login.dart';
import 'package:persebaya_selamanya/pages/newsberitapage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const HomePage(),
      home: loginpage(),
    );
  }
}

