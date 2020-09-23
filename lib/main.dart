import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import './ui/homePage(temporary).dart';
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
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initialization,
        builder: (context, projectSnap) {
          if (projectSnap.hasData)
            return StreamBuilder<User>(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.active) {
                    if (snapshot.hasData) {
                      return MyHomePage(snapshot.data.displayName);
                    }
                  }
                  return LoginScreen();
                });
          return CircularProgressIndicator();
        },
      ),
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
