import 'package:flutter/material.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../../styles.dart';
import 'dialog_widget.dart';
import '../widgets/slider_widget.dart';
class PastEventDetailsPage extends StatelessWidget {

  final styles = Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black38);
 
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

      // returns main page with picture and all
      backgroundColor: Styles.backgroundColor,
      body: Stack(
        children: [
          //One bug Fixed!!
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
          slider(context),
        ],
      ),
    );
  }
}


//Slider Widget



