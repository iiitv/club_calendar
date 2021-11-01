import 'package:club_calendar/models/event_model.dart';
import 'package:club_calendar/styles.dart';
import 'package:club_calendar/ui/utils/past_event_details.dart';
import 'package:flutter/material.dart';
import '../widgets/EventCard.dart';


class PastEventList extends StatefulWidget {
  const PastEventList({Key key}) : super(key: key);

  @override
  _PastEventListState createState() => _PastEventListState();
}

class _PastEventListState extends State<PastEventList> {
  @override
  Styles styles = new Styles();
  List<EventModel> events_list = [

    EventModel(
      eventName: 'PastEvent 1',
      duration: 10,
      dateAndTime: DateTime.now(),
      venue: 'IIITV',),

    EventModel(
      eventName: 'PastEvent 2',
      duration: 10,
      dateAndTime: DateTime.now(),
      venue: 'IIITV',),

    EventModel(
      eventName: 'PastEvent 3',
      duration: 10,
      dateAndTime: DateTime.now(),
      venue: 'IIITV',),


  ];
  Widget build(BuildContext context) {
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
                            child: Text(events_list.length.toString()+" Events",
                              style: styles.headingStyle(),),
                          ),
                        ),



                      ],


                    ),

                    ListView.builder(
                       shrinkWrap: true,
                        itemCount: events_list.length,
                        itemBuilder: (BuildContext ctx, int index){
                          return GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => PastEventDetailsPage()),
                                );
                                print("Event Clicked!");
                              },
                              child: EventCard(
                                  date: '7',
                                  day: 'MON',
                                  name:events_list[index].eventName,
                                  duration: events_list[index].duration.toString() + " days"
                              )
                          );

                        }),
                ]





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
                              child: Text(events_list.length.toString() + " Events",
                                style: styles.headingStyle(),),
                            ),
                          ),



                        ],


                      ),

                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: events_list.length,
                          itemBuilder: (BuildContext ctx, int index){
                            return GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                    context, MaterialPageRoute(builder: (context) => PastEventDetailsPage()),
                                  );
                                  print("Event Clicked!");
                                },
                                child: EventCard(
                                    date: '7',
                                    day: 'MON',
                                    name:events_list[index].eventName,
                                    duration: events_list[index].duration.toString() + " days"
                                )
                            );

                          }),
                    ]





                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}


