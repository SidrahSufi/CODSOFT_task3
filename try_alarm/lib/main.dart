import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'alarm.dart';
import 'homepage.dart';

// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin=
//     FlutterLocalNotificationsPlugin();
Future<void> main() async {
 //  WidgetsFlutterBinding.ensureInitialized();
 //  var initializationSettingsAndroid= AndroidInitializationSettings('logo');
 //  var intializationSettingsIOS= iOSInitializationSettings(
 //    requestAlertPermission: true,
 //    requestBadgePermission: true,
 //    requestSoundPermission: true,
 //    onDidReceiveLocalNotification:(int id , String title, String body, String payload)
 //      async{}
 //  );
 // var initializationSettings=InitializationSettings(
 //     android: initializationSettingsAndroid, iOS: intializationSettingsIOS);
 //
 // await flutterLocalNotificationsPlugin.initialize(initializationSettings,
 //  onSelectNotification:(String payload) async{
 //   if (payload != null){
 //     debugPrint('notification payload:' +payload);
 //   }
 //  }
 //
 // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage ()
    );
  }
}


