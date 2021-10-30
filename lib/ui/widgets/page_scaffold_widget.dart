import 'package:club_calendar/styles.dart';
import 'package:flutter/material.dart';
import 'MenuWidget.dart';

class PageScaffold extends StatefulWidget {
  final Widget body;

  PageScaffold({this.body});


  @override
  _PageScaffoldState createState() => _PageScaffoldState();
}

class _PageScaffoldState extends State<PageScaffold> {
  @override
  Widget build(BuildContext context) {
    final styles=Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black);
if(lit==true)
    final styles=Styles(Colors.white,Colors.black,Colors.white60,Colors.white);
    return Scaffold(
        appBar:AppBar(

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
        body: widget.body
    );
  }
}
