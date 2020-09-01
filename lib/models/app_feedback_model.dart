import 'package:flutter/cupertino.dart';

class AppFeedbackModel {
  int overallExperience, eventDetails, eventNotification; //Rating out of 5
  String detailedFeedback;
  AppFeedbackModel(
      {@required this.overallExperience,
      @required this.eventDetails,
      @required this.eventNotification,
      this.detailedFeedback});
}
