import 'package:club_calendar/ui/slider_widget_present.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;
import 'package:sliding_sheet/sliding_sheet.dart';

import '../styles.dart';
class EventDetailsPage extends StatelessWidget {
  static const String routeName = '\EventDetailsScreen';
  final styles = Styles();
  final List<Map<String, dynamic>> _iconsInfo = [
    {
      'iconData': Icons.calendar_today,
      'info': '7 Sep',
      'day': 'Monday',
    },
    {
      'iconData': Icons.access_time,
      'info': '30 days',
    },
    {
      'iconData': Icons.location_on,
      'info': 'LH1 Sabar Hostel',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Stack(

        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: 12,
                      top: 15,
                      right: MediaQuery.of(context).size.width - 100),
                  height: 70,
                  child: RaisedButton(
                    color: Styles.backgroundColor,
                    elevation: 4,
                    shape: CircleBorder(),
                    child: styles.getIcon(
                      Icons.close,
                      colour: Styles.fontColor,
                      defaultSize: 43.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 23),
                  child: Image.asset('assets/icons/contributathon.jpeg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Contribute-a-thon',
                    style: styles.titleStyle(),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: styles.grid(styles, _iconsInfo),
                ),
                ListTile(
                  leading: styles.getIcon(_iconsInfo[2]['iconData'],
                      radius: 30.0, defaultSize: 30.0),
                  title: Text(
                    _iconsInfo[2]['info'].toString(),
                    softWrap: false,
                    style: styles.headingStyle(fontWeight: FontWeight.normal),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 8),
                  child: Text(
                    'A one line discription about the event of about 20-30 words, which should be enough to grab attention.',
                    style: styles.descriptionStyle(),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          sliderPresent(context),
        ],
      ),
    );
  }
}



neu.NeumorphicStyle _style(BuildContext ctx) {
  return neu.NeumorphicStyle(
    lightSource: neu.LightSource.top,
    shadowLightColorEmboss: Colors.white,
    shadowLightColor: Styles.backgroundColor,
    boxShape: neu.NeumorphicBoxShape.roundRect(
      BorderRadius.only(
        topLeft: Radius.circular(MediaQuery.of(ctx).size.height * 0.0387820513),
        topRight:
        Radius.circular(MediaQuery.of(ctx).size.height * 0.0387820513),
      ),
    ),
    color: Styles.backgroundColor,
    intensity: 0.56,
    shape: neu.NeumorphicShape.concave,
    depth: -19.96877, //MediaQuery.of(context).size.height*0.023,
    oppositeShadowLightSource: true,
  );
}

