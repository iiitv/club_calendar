import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../ui/homePage(temporary).dart';
import '../ui/login_screen.dart';

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
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User> login() async {
    try {
      GoogleSignInAccount _googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication _googleAuthentication =
          await _googleSignInAccount.authentication;
      GoogleAuthCredential credential = GoogleAuthProvider.credential(
          idToken: _googleAuthentication.idToken,
          accessToken: _googleAuthentication.accessToken);

      final UserCredential authResult =
          await _auth.signInWithCredential(credential);
      final User user = authResult.user;

      this.name = _googleSignIn.currentUser.displayName;
      print("Hey there,$name");
      print(user);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(
              name
            ),
          ));
      return user;
    } catch (e) {
      print(e);
    }
  }

  String getName() {
    if (this.name != null) return this.name;
    return ' ';
  }

  Future<User> logout() async {
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
