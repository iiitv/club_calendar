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
              mainAxisAlignment: MainAxisAlignment.start,
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
          slider(styles, context),
        ],
      ),
    );
  }
}

Widget slider(var styles, BuildContext context) {
  return SlidingSheet(
    color: Styles.backgroundColor,
    elevation: 8,
    cornerRadius: 33,
    snapSpec: const SnapSpec(
      snap: true,
      snappings: [70, 230, 550],
      positioning: SnapPositioning.pixelOffset,
    ),
    builder: (context, state) {
      var styles = Styles();
      List<Map<String, dynamic>> _info = [
        // {'image': 'assets/icons/speaker.png', 'info': '7 Sep'},
        {'image': 'assets/icons/checklists2.png', 'info': 'None'},
        {'image': 'assets/icons/award 1.png', 'info': 'Rs. 25k'},
      ];
      return Container(
        height: MediaQuery.of(context).size.height * 0.58,
        // width: MediaQuery.of(buildcontext).size.width,
        decoration: BoxDecoration(
          color: Styles.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33.0),
            topRight: Radius.circular(33.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Wrap(
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              ListTile(
                leading: styles.leadingListTile('assets/icons/speaker.png'),
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ashutosh Singh',
                      style: styles.customStyle(
                          size: 20.0, color: Styles.detailsColor),
                    ),
                    Text(
                      'Pushkar Patel',
                      style: styles.customStyle(
                          size: 20.0, color: Styles.detailsColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 80,
                child: styles.grid(styles, _info),
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.87,
                  alignment: Alignment.center,
                  color: Styles.buttonColor,
                  height: 1.5,
                  padding: EdgeInsets.all(16),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ListTile(
                leading: styles.leadingListTile('assets/icons/medal1.png',
                    radius: 60.0),
                title: Text(
                  'NA',
                  style:
                  styles.customStyle(size: 20.0, color: Styles.detailsColor),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              ListTile(
                leading: styles.leadingListTile('assets/icons/feedback1.png'),
                title: Text(
                  'NA',
                  style:
                  styles.customStyle(size: 20.0, color: Styles.detailsColor),
                ),
              ),
            ],
          ),
        ),
      );
    },
    headerBuilder: (context, state) {
      return Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33.0),
            topRight: Radius.circular(33.0),
          ),
          color: Styles.backgroundColor,
        ),
        child: neu.NeumorphicButton(
          onPressed: () {
            print('hi');
          },
          style: _style(context),
          child: Center(
            child: Text(
              'More Details',
              style: styles.descriptionStyle(color: Styles.buttonColor),
            ),
          ),
        ),
      );
    },
  );
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

