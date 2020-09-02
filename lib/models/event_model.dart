import 'package:flutter/foundation.dart';


enum Typeofevent{
Workshop,
Talk, 
Hackathon, 
Quiz,
Competition, 
}


class EventModel
{
 
String eventName;
String duration;
var date;
var startTime;
String venue;
Typeofevent eventType;
List speaker;
List prizes;
List winners;
List  specialNotes;
 EventModel({ @required this.eventName, @required this.duration,
 @required this.date, @required this.startTime, @required this.venue, @required this.eventType,
  this.speaker,  this.prizes, this.winners,  this.specialNotes});


}

//examaple of object declaration 
// void main()
// {
// var eventNumber=2;  //this will come from user input
//    EventModel variableName = EventModel(eventName: " hello World", duration:"2 hrs ",
//  date: "20:10:2020", startTime:32,venue:"mathclub",  eventType: Typeofevent.values[eventNumber],speaker: ["vikrant" ,"yash"]); 
// }
