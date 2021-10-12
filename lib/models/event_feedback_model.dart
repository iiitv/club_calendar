import 'package:flutter/material.dart';

class EventFeedbackModel {
  double overallExperience; //Rating out of 5
  String detailedFeedback;
  EventFeedbackModel(
      {@required this.overallExperience,
         this.detailedFeedback});
}
