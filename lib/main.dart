import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import './util/cloud_messaging_handler.dart';
import './util/crashlytics_handler.dart';
import './ui/login_screen.dart';
import './ui/homePage(temporary).dart';
import 'ui/event_details.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseCrashlytics.initialize();
  CloudMessaging.cloudMessaging();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return NeumorphicApp(
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
        EventDetailsPage.routeName: (context)=>EventDetailsPage(),
      },
      title: 'Flutter Demo',
    );
  }
}
