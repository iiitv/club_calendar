//this is temporary homepage till the th erequired homepage is made.
//this is made for the checking whether the login page is siigning correctly
import 'package:club_calendar/util/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  final String title = "hello";
  final String name;
  MyHomePage(this.name);
  static const routeName = '/homepage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void showSnackBar() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(
        "Welcome, ${widget.name.substring(9)}",
        style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.046),
      ),
      backgroundColor: Colors.deepPurpleAccent,
      elevation: 30,
    ));
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => showSnackBar());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Center(
            child: Text(
          widget.title,
          style: GoogleFonts.assistant(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height * 0.030),
        )),
        actions: [
          FlatButton(
            child: Text(
              'Sign Out',
              style: GoogleFonts.assistant(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.035),
            ),
            onPressed: () {
              var googleSignMe = GoogleSignMeIn();
              googleSignMe.logout();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
