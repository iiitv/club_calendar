import 'package:club_calendar/styles.dart';
import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {

  String day;
  String date;
  String name;
  String duration;

  EventCard({this.day,this.date,this.name,this.duration});

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  @override
  Widget build(BuildContext context) {

    final styles=Styles();

    //For date part

    final date_section=
    Padding(
        padding: EdgeInsets.all(10),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
               border: Border.all(
               color: Styles.buttonColor
            )

         ),
             child: Card(

             color: Colors.black12,
             child: Column(
                 children: [
                   Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                       child: Text(widget.date,
                            style: styles.cardHeadingStyle(

                           color: Styles.buttonColor,
                           fontWeight: FontWeight.w300,


                            )
                     ),
                   ),
                   Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Text(widget.day,
                    style: styles.cardDurationStyle(
                        color: Styles.buttonColor,
                        fontWeight: FontWeight.w300,


                    )
                ),
              )
           ],
         ),
        )
      )
    ) ;

    //**********************************************************************************************

    // For text part

    final text_section=Flexible(
        child:Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.name,
                  style: styles.cardHeadingStyle()),
            ),
            Padding(
             padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Text(widget.duration.toString(),
                  style: styles.cardDurationStyle()),
            )
          ],
        ),
      ),
    )
    );

    //**********************************************************************************************

    return Padding(
      padding: const EdgeInsets.all(15),
      child: Card(
          color: Colors.black12,
          elevation: 5.0,
          child: Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                date_section,
                text_section
              ],
            ),
          )
        ),
    );

  }
}
