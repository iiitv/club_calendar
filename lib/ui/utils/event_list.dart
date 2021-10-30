import 'package:club_calendar/styles.dart';
import 'package:flutter/material.dart';
import '../widgets/EventCard.dart';
import 'event_details.dart';
import '../widgets/MenuWidget.dart';

class EventList extends StatefulWidget {
  const EventList({Key key}) : super(key: key);

  @override
  _EventListState createState() => _EventListState();
}

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    // final styles = Styles.namedConstructor();
    final styles = Styles(Colors.grey.shade800, Colors.white,Colors.black12,Colors.black38);
    if (lit == true) {
      var styles = Styles(Colors.white, Colors.black,Colors.white60,Colors.white24);
    }

    return SingleChildScrollView(
      child: Container(
        color: Styles.backgroundColor,
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 60),
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
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.only(
                                topRight: Radius.circular(100),
                                bottomRight: Radius.circular(100)),
                            color: Styles.buttonColor,
                          ),
                          child: Text(
                            "Month",
                            style: styles.headingStyle(),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 20),
                          child: Container(
                            child: Text(
                              "n Events",
                              style: styles.headingStyle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(EventDetailsPage.routeName);
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(
                            date: '7',
                            day: 'MON',
                            name: 'Event1',
                            duration: 'x days')),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(EventDetailsPage.routeName);
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(
                            date: '7',
                            day: 'MON',
                            name: 'Event1',
                            duration: 'x days')),
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
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: new BorderRadius.only(
                                topRight: Radius.circular(100),
                                bottomRight: Radius.circular(100)),
                            color: Styles.buttonColor,
                          ),
                          child: Text(
                            "Month",
                            style: styles.headingStyle(),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 20),
                          child: Container(
                            child: Text(
                              "n Events",
                              style: styles.headingStyle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(EventDetailsPage.routeName);
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(
                            date: '7',
                            day: 'MON',
                            name: 'Event1',
                            duration: 'x days')),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(EventDetailsPage.routeName);
                          print("Event Clicked!");
                        }, //TODO,
                        child: EventCard(
                            date: '7',
                            day: 'MON',
                            name: 'Event1',
                            duration: 'x days')),
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
