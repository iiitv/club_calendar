//this is temporary homepage till the th erequired homepage is made.
//this is made for the checking whether the login page is siigning correctly
import 'package:club_calendar/styles.dart';
import 'package:club_calendar/ui/event_list.dart';
import 'package:flutter/material.dart';
import 'MenuWidget.dart';


class MyHomePage extends StatefulWidget {
  final String title = "CLUB CALENDAR";
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

  @override
  Widget build(BuildContext context) {

    Styles styles = new Styles();

    return Scaffold(

      backgroundColor: Styles.backgroundColor,
      key: _scaffoldKey,

      appBar: AppBar(
        backgroundColor: Styles.backgroundColor,
        elevation: 0.0,

        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Builder(

              builder: (context) => IconButton(
                  icon: Icon(Icons.menu),

                  onPressed: (){
                    Scaffold.of(context).openDrawer();
                  }

              ),
            ),
            Text("CLUB CALENDAR",
            style: styles.headingStyle(),)
          ],
        ),

      ),


      drawer: MenuWidget(),


      body: SingleChildScrollView(
          child: EventList()
      ),


    );
  }
}
