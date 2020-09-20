import 'package:flutter/material.dart';

import './util/cloud_messaging_handler.dart';
import './util/crashlytics_handler.dart';
import './ui/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseCrashlytics.initialize();
  CloudMessaging.cloudMessaging();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
