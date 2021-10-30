import 'package:flutter/material.dart';

import '../styles.dart';
import 'MenuWidget.dart';
import 'event_list.dart';

class EventListPage extends StatefulWidget {
  const EventListPage({Key key}) : super(key: key);

  @override
  _EventListPageState createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  Styles styles =new Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black38);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body:EventList()


    );
  }
}
