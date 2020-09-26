import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleSignMeIn {
  String name;
  GoogleSignMeIn();
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
    ],
  );
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> login() async {
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
      return user;
    } catch (e) {
      print(e);
    }
  }

  String getName() {
    if (this.name != null) return this.name;
    return ' ';
  }

  Future<void> logout() async {
    try {
      await _googleSignIn.signOut();
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e);
    }
  }
}
