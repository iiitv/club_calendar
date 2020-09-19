import 'package:firebase_messaging/firebase_messaging.dart';

class CloudMessanger {
  static cloudMessanger() {
    final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        //if app is already opened just show the notification(app running in foreground)
        print("onMessage: $message");
        // _showItemDialog(message);
      },
      onLaunch: (Map<String, dynamic> message) async {
        //if app is killed or not opened(not running in background)
        print("onLaunch: $message");
        // _navigateToItemDetail(message);
      },
      onResume: (Map<String, dynamic> message) async {
        //if app is running in background
        print("onResume: $message");
        // _navigateToItemDetail(message);
      },
    );
  }
}
