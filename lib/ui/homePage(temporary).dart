//this is temporary homepage till the th erequired homepage is made.
//this is made for the checking whether the login page is siigning correctly
import 'package:club_calendar/util/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'event_details.dart';

class MyHomePage extends StatefulWidget {
  final String title = "hello";
  final String name;
  MyHomePage(this.name);
  static const routeName = '/homepage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
  AnimationController animationController;
  Animation animation;
  int currentState = 0;


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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          
              MaterialButton(
                onPressed: (){
          Navigator.of(context).pushNamed(EventDetailsPage.routeName);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding:EdgeInsets.only(right: 10),
                    child:
                  Icon(Icons.category_outlined),
                    ),
                  Text("Event Details"),
                ],),
                padding: EdgeInsets.symmetric(horizontal: 23),                
                height: 40,
                elevation:10,
                animationDuration: Duration(seconds: 2),
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                color: Colors.blue[700],
                textColor: Colors.white,
                 ),
              MaterialButton(
                onPressed: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding:EdgeInsets.only(right: 10),
                    child:
                  Icon(Icons.description),
                    ),
                  Text("Event Page"),
                ],),
                padding: EdgeInsets.symmetric(horizontal: 29),                
                height: 40,
                elevation:10,
                animationDuration: Duration(seconds: 2),
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                color: Colors.blue[700],
                textColor: Colors.white,
                 ),
              MaterialButton(
                onPressed: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding:EdgeInsets.only(right: 10),
                    child:
                  Icon(Icons.feedback),
                    ),
                  Text("Feedback Page"),
                ],),
                padding: EdgeInsets.symmetric(horizontal: 16),                
                height: 40,
                elevation:10,
                animationDuration: Duration(seconds: 2),
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                color: Colors.blue[700],
                textColor: Colors.white,
                 ),
              MaterialButton(
                onPressed: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(padding:EdgeInsets.only(right: 5),
                    child:
                  Icon(Icons.date_range),
                    ),
                  Text("Past Event Page"),
                ],),
                height: 40,
                elevation:10,
                animationDuration: Duration(seconds: 2),
                splashColor: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                color: Colors.blue[700],
                textColor: Colors.white,
                 ),
          ],
        ),
      ),
    
      
    );
  }
}
