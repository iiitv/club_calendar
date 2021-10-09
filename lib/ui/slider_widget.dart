import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;
import '../styles.dart';
import 'dialog_widget.dart';

Widget slider(BuildContext context) {
  double deviceHeight = MediaQuery.of(context).size.height,
      deviceWidth = MediaQuery.of(context).size.width;
  Styles styles= new Styles();
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

      //Contains all details of more details page
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
                height: 80,
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

                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '1st Prize',
                      style:
                      styles.customStyle(size: 20.0, color: Styles.detailsColor),
                    ),
                    Text(
                      'Rs. 5 k',
                      style:
                      styles.customStyle(size: 20.0, color: Styles.detailsColor),
                    ),

                  ],
                ),
              ),
              ListTile(
                leading: styles.leadingListTile('assets/icons/silver_medal.png',
                    radius: 60.0),

                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '2nd Prize',
                      style:
                      styles.customStyle(size: 20.0, color: Styles.detailsColor),
                    ),
                    Text(
                      'Rs. 3 k',
                      style:
                      styles.customStyle(size: 20.0, color: Styles.detailsColor),
                    ),

                  ],
                ),
              ),
              ListTile(
                leading: styles.leadingListTile('assets/icons/bronze_medal.png',
                    radius: 60.0),

                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '3rd Prize',
                      style:
                      styles.customStyle(size: 20.0, color: Styles.detailsColor),
                    ),
                    Text(
                      'Rs. 2 k',
                      style:
                      styles.customStyle(size: 20.0, color: Styles.detailsColor),
                    ),

                  ],
                ),
              ),

              //************************************************************
              SizedBox(
                height: 90,
              ),

              //************************************************************

              //Feedback, Rating bar, rate now
              ListTile(
                leading: styles.leadingListTile('assets/icons/feedback1.png'),
                title: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: deviceWidth*0.05,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        unratedColor: Colors.white,
                        onRatingUpdate: (rating) {
                          print("Overall Experience : ${rating}");
                        },
                      ),
                    ),
                    FlatButton(
                        onPressed:(){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => DialogScreen()
                          );
                        },
                        child: Center(
                          child: Text('Rate Now',
                            style: TextStyle(color: Styles.buttonColor),),
                        ))
                  ],
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
