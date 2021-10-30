import 'package:club_calendar/ui/pages/homePage(temporary).dart';
import 'package:club_calendar/ui/pages/past_event_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../../styles.dart';
import '../../util/google_sign_in.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../pages/event_list_page.dart';
import '../pages/app_feedback_page.dart';
import '../utils/event_list.dart';
import '../utils/app_feedback.dart';
import '../utils/event_details.dart';
import '../utils/event_list.dart';
import '../utils/event_list.dart';

//Drawer Code
class MenuWidget extends StatefulWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

bool lit = false;

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    //bool variable to keep in touch of events when button pressed

    bool isPressedEvent = false;
    bool isPressedPastEvent = false;
    bool isPressedFeedBack = false;

    var styles = Styles(Colors.grey.shade800, Colors.white,Colors.black12,Colors.white12);
    if (lit == true) {
      var styles = Styles(Colors.white, Colors.black,Colors.white60,Colors.white60);
    }

    double deviceHeight = MediaQuery.of(context).size.height,
        deviceWidth = MediaQuery.of(context).size.width;

    //**********************************************************************************************
    return Drawer(
        child: SingleChildScrollView(
            child: Container(
      width: deviceWidth,
      color: Styles.backgroundColor,
      child: Column(
        children: [
          SizedBox(
                height: 40,
              ),
              Column(
                children:[
                  Text("Dark-Light",
                  style: TextStyle(color: Styles.fontColor),
                  ),
          Switch(
              value: lit,
              onChanged: (val) {
                setState(() {
                  lit = val;
                   Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EventListPage()),
                      );
                });
              }),
                ]),
          Container(
            height: deviceHeight,
            child: ListView(children: [
          
              //Image
              Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  width: deviceWidth * 0.2,
                  height: deviceHeight * 0.2,
                  child: Image.asset(
                    "assets/icons/CC-Logo(1).png",
                    scale: 1.3,
                  ),
                ),
              ),

              //**********************************************************************************************
              SizedBox(
                width:10,
                height: 40,
              ),

              //Slider
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 20, bottom: 50, left: 10, right: 10),
              //   child: SizedBox(
              //     height: deviceHeight * 0.06399636,
              //     width: deviceWidth * 0.8,
              //     child: SlidingSwitch(
              //       value: false,
              //       width: deviceWidth * 0.731, //check adaptability
              //       onChanged: (bool value) {
              //         print(value);
              //       },
              //       height: 55,
              //       animationDuration: const Duration(milliseconds: 400),
              //       onTap: () {},
              //       onDoubleTap: () {},
              //       onSwipe: () {},
              //       textOff: "Dark",
              //       textOn: "Light",
              //       colorOn: Colors.white,
              //       colorOff: const Color(0xff6682c0),
              //       background: Colors.black38,
              //       buttonColor: Colors.black,
              //       inactiveColor: const Color(0xff636f7b),
              //     ),
              //   ),
              // ),

              //**********************************************************************************************

              //Event
              Padding(
                //Check adaptability
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 10),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: deviceHeight * 0.07399636,
                  width: deviceWidth * 0.79,
                  child: neu.NeumorphicButton(
                    style: neu.NeumorphicStyle(
                      shadowLightColorEmboss: Styles.backgroundColor,
                      shadowLightColor: Styles.backgroundColor,
                      boxShape: neu.NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.0387820513),
                      ),
                      color: !isPressedEvent
                          ? Styles.backgroundColor
                          : Colors.black12,

                      shape: neu.NeumorphicShape.flat,

                      depth: isPressedEvent
                          ? -4.9687
                          : 4.9687, //MediaQuery.of(context).size.height*0.023,
                    ),

                    //TODO
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EventListPage()),
                      );

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
                              child: AutoSizeText(
                                "Events",
                                style: TextStyle(
                                    color: Styles.textColor,
                                    fontSize: 20,
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

              //**********************************************************************************************

              //Past Events
              Padding(
                //Check adaptability
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 10),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: deviceHeight * 0.07399636,
                  width: deviceWidth * 0.79,
                  child: neu.NeumorphicButton(
                    style: neu.NeumorphicStyle(
                      shadowLightColorEmboss: Styles.backgroundColor,
                      shadowLightColor: Styles.backgroundColor,
                      boxShape: neu.NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.0387820513),
                      ),
                      color: !isPressedPastEvent
                          ? Styles.backgroundColor
                          : Colors.black12,
                      intensity: 1,
                      shape: neu.NeumorphicShape.flat,

                      depth: isPressedPastEvent
                          ? -4.9687
                          : 4.9687, //MediaQuery.of(context).size.height*0.023,
                      oppositeShadowLightSource: false,
                    ),

                    //TODO
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PastEventListPage()),
                      );

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
                              child: AutoSizeText(
                                "Past Events",
                                style: TextStyle(
                                    color: Styles.textColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
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

              //**********************************************************************************************

              //Send Feedback
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 10, right: 10),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: deviceHeight * 0.07399636,
                  width: deviceWidth * 0.79,
                  child: neu.NeumorphicButton(
                    style: neu.NeumorphicStyle(
                      shadowLightColorEmboss: Styles.backgroundColor,
                      shadowLightColor: Styles.backgroundColor,
                      boxShape: neu.NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.0387820513),
                      ),
                      color: !isPressedFeedBack
                          ? Styles.backgroundColor
                          : Colors.black12,
                      intensity: 1,
                      shape: neu.NeumorphicShape.flat,

                      depth: isPressedFeedBack
                          ? -4.9687
                          : 4.9687, //MediaQuery.of(context).size.height*0.023,
                      oppositeShadowLightSource: false,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppFeedBackPage()),
                      );

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
                              child: AutoSizeText(
                                "Send feedback",
                                style: TextStyle(
                                    color: Styles.textColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
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

              //**********************************************************************************************

              SizedBox(
                height: deviceHeight * 0.07,
              ),

              //Signout Button
              Padding(
                padding: const EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: FloatingActionButton(
                    backgroundColor: Styles.subCardColor,
                    onPressed: () {
                      var googleSignMe = GoogleSignMeIn();
                      googleSignMe.logout();
                    },
                    child: Icon(Icons.logout),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    )));
  }
}
