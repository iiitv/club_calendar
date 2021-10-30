import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;
import '../styles.dart';
import 'dialog_widget.dart';

Widget sliderPresent(BuildContext context) {
  double deviceHeight = MediaQuery.of(context).size.height,
      deviceWidth = MediaQuery.of(context).size.width;
  Styles styles= new Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black38);
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
      var styles = Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black38);
      List<Map<String, dynamic>> _info = [
        // {'image': 'assets/icons/speaker.png', 'info': '7 Sep'},
        {'image': 'assets/icons/checklists2.png', 'info': 'None'},
        {'image': 'assets/icons/award 1.png', 'info': 'Rs. 25k'},
      ];

      //Contains all details of more details page
      return Container(



        // width: MediaQuery.of(buildcontext).size.width,
        decoration: BoxDecoration(
          color: Styles.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(33.0),
            topRight: Radius.circular(33.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              SizedBox(
                height: 20,
              ),


              //Names
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
                height: 20,
              ),

              //Info used here
              Container(
                height: 80,
                child: styles.grid(styles, _info),
              ),

              //Divider
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.87,
                  alignment: Alignment.center,
                  color: Styles.buttonColor,
                  height: 1.5,
                  padding: EdgeInsets.all(16),
                ),
              ),
              //**************************************************************

              //Prizes

              ListTile(
                leading: styles.leadingListTile('assets/icons/medal.png',
                    radius: 60.0),

                title: Text("NA", style: styles.customStyle(
                    size: 20.0, color: Styles.detailsColor))
              ),





              //************************************************************
              SizedBox(
                height: 20,
              ),

              //************************************************************


              ListTile(
                leading: styles.leadingListTile('assets/icons/feedback1.png'),
                title: Text("NA",
                    style: styles.customStyle(
                        size: 20.0, color: Styles.detailsColor)
                ),

              ),


            ],
          ),
        ),
      );
    },



    headerBuilder: (context, state) {

      //Container Contains More Details button
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


//styling for more details button
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
