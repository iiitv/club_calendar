import 'package:club_calendar/ui/past_event_list.dart';
import 'package:flutter/material.dart';
import '../styles.dart';
import 'MenuWidget.dart';


class PastEventListPage extends StatefulWidget {
  const PastEventListPage({Key key}) : super(key: key);

  @override
  _PastEventListPageState createState() => _PastEventListPageState();
}

class _PastEventListPageState extends State<PastEventListPage> {
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
        body: PastEventList()


    );
  }
}
