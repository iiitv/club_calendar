import 'package:club_calendar/styles.dart';
import 'package:club_calendar/ui/utils/past_event_details.dart';
import 'package:flutter/material.dart';
import 'package:club_calendar/ui/MenuWidget.dart';
import '../widgets/EventCard.dart';
import 'event_list.dart';

class PastEventList extends StatefulWidget {
  const PastEventList({Key key}) : super(key: key);

  @override
  _PastEventListState createState() => _PastEventListState();
}

class _PastEventListState extends State<PastEventList> {
  @override
  Widget build(BuildContext context) {
  Styles styles = new Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black38);
   if(lit==true)
    final styles=Styles(Colors.white,Colors.black,Colors.white60,Colors.white12);
    return SingleChildScrollView(

      child: Container(
        color: Styles.backgroundColor,
        child: Padding(
          padding: EdgeInsets.only(top: 10,bottom: 60),

          child: Column(
            children: [
              Container(


                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        //For Month
                        Container(
                          padding: EdgeInsets.only(left: 20,right:20,top: 10,bottom: 10),


                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.only(topRight: Radius.circular(100), bottomRight: Radius.circular(100)),
                            color: Styles.buttonColor,



                          ),
                          child: Text("PastMonth",
                            style: styles.headingStyle(),

                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 20,right:20,top: 10,bottom: 20),
                          child: Container(
                            child: Text("n Events",
                              style: styles.headingStyle(),),
                          ),
                        ),



                      ],


                    ),


                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PastEventDetailsPage()),
                          );
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(date: '7',day: 'MON',name:'PastEvent1',duration: 'x days')),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PastEventDetailsPage()),
                          );
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(date: '7',day: 'MON',name:'PastEvent1',duration: 'x days')),
                  ],

                ),
              ),
              Container(


                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        //For Month
                        Container(
                          padding: EdgeInsets.only(left: 20,right:20,top: 10,bottom: 10),


                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.only(topRight: Radius.circular(100), bottomRight: Radius.circular(100)),
                            color: Styles.buttonColor,



                          ),
                          child: Text("PastMonth",
                            style: styles.headingStyle(),

                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 20,right:20,top: 10,bottom: 20),
                          child: Container(
                            child: Text("n Events",
                              style: styles.headingStyle(),),
                          ),
                        ),



                      ],


                    ),


                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PastEventDetailsPage()),
                          );
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(date: '7',day: 'MON',name:'PastEvent1',duration: 'x days')),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => PastEventDetailsPage()),
                          );
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(date: '7',day: 'MON',name:'PastEvent1',duration: 'x days')),
                  ],

                ),
              ),


            ],
          ),
        ),
      ),
    );

  }
}


