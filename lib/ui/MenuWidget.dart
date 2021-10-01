import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../styles.dart';
import '../util/google_sign_in.dart';
import 'event_details.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    bool isPressedEvent= false;
    bool isPressedPastEvent= false;
    bool isPressedFeedBack= false;
    bool isPressed= false;


    var styles = Styles();
    double deviceHeight = MediaQuery.of(context).size.height,
        deviceWidth = MediaQuery.of(context).size.width;
    return Drawer(
      child: Container(
        height: deviceHeight,
        color: Colors.black87,
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(

                width: deviceWidth*0.3,
                height: deviceHeight*0.3 ,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image:AssetImage("assets/icons/CC-Logo(1).png"),
                      fit: BoxFit.fitHeight
                  ),
                ),
              ),
            ),


            //Switch
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20,left: 10,right: 10),
              child: Container(

                alignment: Alignment.bottomCenter,
                height: deviceHeight * 0.06399636,
                width: deviceWidth * 0.79,
                child: neu.NeumorphicSwitch(
                  height: deviceHeight * 0.06399636,





                ),
              ),
            ),


            //Event

            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20,left: 10,right: 10),
              child: Container(

                alignment: Alignment.bottomCenter,
                height: deviceHeight * 0.06399636,
                width: deviceWidth * 0.79,
                child: neu.NeumorphicButton(
                  style: neu.NeumorphicStyle(
                    lightSource: isPressed
                        ? neu.LightSource.topLeft
                        : neu.LightSource.top,
                    shadowLightColorEmboss: Styles.backgroundColor,
                    shadowLightColor: Styles.backgroundColor,
                    boxShape: neu.NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.0387820513),
                    ),
                    color: !isPressed ? Styles.backgroundColor : Colors.black12,
                    intensity: 1,
                    shape: neu.NeumorphicShape.flat,

                    depth: isPressed
                        ? -4.9687
                        : 4.9687, //MediaQuery.of(context).size.height*0.023,
                    oppositeShadowLightSource: false,
                  ),
                  onPressed: () {

                    setState(() {
                      isPressedEvent = true;
                    });
                  },
                  child: Container(
                    height: deviceHeight * 0.06599636,
                    width: deviceWidth * 0.76,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * 0.011),

                        ),
                        Flexible(

                          child: Center(
                            child: Text(
                              "Events",
                              style: styles.headingStyle(
                                  color: Styles.buttonColor,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Past Events
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20,left: 10,right: 10),
              child: Container(

                alignment: Alignment.bottomCenter,
                height: deviceHeight * 0.06399636,
                width: deviceWidth * 0.79,
                child: neu.NeumorphicButton(
                  style: neu.NeumorphicStyle(
                    lightSource: isPressed
                        ? neu.LightSource.topLeft
                        : neu.LightSource.top,
                    shadowLightColorEmboss: Styles.backgroundColor,
                    shadowLightColor: Styles.backgroundColor,
                    boxShape: neu.NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.0387820513),
                    ),
                    color: !isPressed ? Styles.backgroundColor : Colors.black12,
                    intensity: 1,
                    shape: neu.NeumorphicShape.flat,

                    depth: isPressed
                        ? -4.9687
                        : 4.9687, //MediaQuery.of(context).size.height*0.023,
                    oppositeShadowLightSource: false,
                  ),
                  onPressed: () {

                    setState(() {
                      isPressedPastEvent = true;
                    });
                  },
                  child: Container(
                    height: deviceHeight * 0.06599636,
                    width: deviceWidth * 0.76,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * 0.011),

                        ),
                        Flexible(

                          child: Center(
                            child: Text(
                              "Past Events",
                              style: styles.headingStyle(
                                  color: Styles.buttonColor,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Send Feedback
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20,left: 10,right: 10),
              child: Container(

                alignment: Alignment.bottomCenter,
                height: deviceHeight * 0.06399636,
                width: deviceWidth * 0.79,
                child: neu.NeumorphicButton(
                  style: neu.NeumorphicStyle(
                    lightSource: isPressed
                        ? neu.LightSource.topLeft
                        : neu.LightSource.top,
                    shadowLightColorEmboss: Styles.backgroundColor,
                    shadowLightColor: Styles.backgroundColor,
                    boxShape: neu.NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.0387820513),
                    ),
                    color: !isPressed ? Styles.backgroundColor : Colors.black12,
                    intensity: 1,
                    shape: neu.NeumorphicShape.flat,

                    depth: isPressed
                        ? -4.9687
                        : 4.9687, //MediaQuery.of(context).size.height*0.023,
                    oppositeShadowLightSource: false,
                  ),
                  onPressed: () {

                    setState(() {
                      isPressedFeedBack = true;
                    });
                  },
                  child: Container(
                    height: deviceHeight * 0.06599636,
                    width: deviceWidth * 0.76,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * 0.011),

                        ),
                        Flexible(

                          child: Center(
                            child: Text(
                              "Send feedback",
                              style: styles.headingStyle(
                                  color: Styles.buttonColor,
                                  fontWeight: FontWeight.w400),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Signout Button

            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: FloatingActionButton(

                  backgroundColor: Colors.grey[800],


                  onPressed: () {
                    var googleSignMe = GoogleSignMeIn();
                    googleSignMe.logout();


                  },

                  child: Icon(Icons.logout),
                ),
              ),
            ),












]

    )
      ),
    );
  }
}
