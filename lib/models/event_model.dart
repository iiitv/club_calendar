import 'package:flutter/foundation.dart';

enum Typeofevent {
  Workshop,
  Talk,
  Hackathon,
  Quiz,
  Competition,
}

class EventModel {
  String eventName;
  int duration;
  DateTime dateAndTime;

  String venue;
  Typeofevent eventType;
  List<String> speaker;
  List<String> organisers;
  Map<String, String> prizes;
  Map<String, String> winners;
  String specialNotes;
  EventModel(
      {@required this.eventName,
      @required this.duration,
      @required this.dateAndTime,
      @required this.venue,
      @required this.eventType,
      this.speaker,
      this.organisers,
      this.prizes,
      this.winners,
      this.specialNotes});
}
