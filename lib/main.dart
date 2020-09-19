import 'package:club_calendar/util/crashlytics_handler.dart';
import 'package:flutter/material.dart';

import './util/crashlytics_handler.dart';
import './ui/login_screen.dart';

void main() {
  FireBaseCrashLytics.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
