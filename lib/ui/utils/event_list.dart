import 'package:club_calendar/models/event_model.dart';
import 'package:club_calendar/styles.dart';
import 'package:flutter/material.dart';
import '../widgets/EventCard.dart';
import 'event_details.dart';

class EventList extends StatefulWidget {
  const EventList({Key key}) : super(key: key);

  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {

  final styles=Styles();

  var month_list={

    'January' : [
      EventModel(
        eventName: 'Event 1',
        duration: 10,
        dateAndTime: DateTime.now(),
        venue: 'IIITV',),
      EventModel(
        eventName: 'Event 1',
        duration: 10,
        dateAndTime: DateTime.now(),
        venue: 'IIITV',),
    ],

    'February' : [
      EventModel(
        eventName: 'Event 1',
        duration: 10,
        dateAndTime: DateTime.now(),
        venue: 'IIITV',),
      EventModel(
        eventName: 'Event 1',
        duration: 10,
        dateAndTime: DateTime.now(),
        venue: 'IIITV',),
      EventModel(
        eventName: 'Event 1',
        duration: 10,
        dateAndTime: DateTime.now(),
        venue: 'IIITV',),
    ],

    'March' : [
      EventModel(
        eventName: 'Event 1',
        duration: 10,
        dateAndTime: DateTime.now(),
        venue: 'IIITV',),

      EventModel(
        eventName: 'Event 1',
        duration: 10,
        dateAndTime: DateTime.now(),
        venue: 'IIITV',),

    ]

  };




  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Styles.backgroundColor,
      child: ListView.builder(

          itemCount: month_list.length,
          itemBuilder: (BuildContext ctx, int index){
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //For Month
                    Container(
                      padding: EdgeInsets.only(left: 20,right:20,top: 10,bottom: 10),

                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomRight: Radius.circular(100)),
                        color: Styles.buttonColor,



                      ),
                      child: Text(month_list.keys.elementAt(index),
                        style: styles.headingStyle(),

                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 20,right:20,top: 10,bottom: 20),
                      child: Container(
                        child: Text(
                          month_list.values.elementAt(index).length.toString()+" Events",
                          style: styles.headingStyle(),),
                      ),
                    ),

                  ],
                ),

                ListView.builder(
                    shrinkWrap: true,
                    itemCount: month_list.values.elementAt(index).length,
                    itemBuilder: (BuildContext ctx, int index1){

                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, MaterialPageRoute(builder: (context) => EventDetailsPage()),
                          );
                          print("Event Clicked!");

                        },

                        child: EventCard(
                            date: '7',
                            day: 'MON',
                            name: month_list.values.elementAt(index).elementAt(index1).eventName,
                            duration: month_list.values.elementAt(index).elementAt(index1).duration.toString() + " days"

                        ),
                      );

                    })

              ],
            );
          }),
    );
  }
}

