import 'package:flutter/material.dart';

import '../styles.dart';
import 'MenuWidget.dart';
import 'app_feedback.dart';

class AppFeedBackPage extends StatefulWidget {
  const AppFeedBackPage({Key key}) : super(key: key);

  static const routeName = '/appFeedbackPage';

  @override
  _AppFeedBackPageState createState() => _AppFeedBackPageState();
}

class _AppFeedBackPageState extends State<AppFeedBackPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    Styles styles = new Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black38);
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
        body:AppFeedback()

    );

  }
}
