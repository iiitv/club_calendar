import 'package:club_calendar/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../ui/homePage(temporary).dart';

class GoogleSignMeIn {
  int whatToDo;
  String name;
  BuildContext context;
  GoogleSignMeIn({@required this.whatToDo, @required this.context});
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );
  login() async {
    try {
      await _googleSignIn.signIn();
      this.name = _googleSignIn.currentUser.displayName;
      print("Hey there,$name");
      Navigator.pushReplacement(context,MaterialPageRoute(
        builder: (context) => MyHomePage(
          name,
        ),
      ));
    } catch (e) {
      print(e);
    }
  }

  String getName() {
    if (this.name != null) return this.name;
    return ' ';
  }

  logout() async {
    try {
      await _googleSignIn.signOut();
      // this.name = _googleSignIn.currentUser.displayName;
      // print("Bye, $name");
      Navigator.of(context).popAndPushNamed(LoginScreen.routeName);
    } catch (e) {
      print(e);
    }
  }

  dynamic check() {
    if (whatToDo == 1) {
      login();
    } else {
      logout();
    }
  }
}
