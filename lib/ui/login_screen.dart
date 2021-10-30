import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart' as neu;

import '../styles.dart';
import '../util/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isPressed = false;
  var styles = Styles(Colors.grey.shade800,Colors.white,Colors.black12,Colors.black38);
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height,
        deviceWidth = MediaQuery.of(context).size.width;
    print(deviceHeight);
    print(deviceWidth);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Container(
        height: deviceHeight * 0.87,
        child: Column(
          children: [
            Stack(
              overflow: Overflow.visible,
              children: [
                Image.asset(
                  'assets/icons/Vector1.png',
                  fit: BoxFit.fill,
                  scale: 0.4,
                ),
                Image.asset(
                  'assets/icons/Vector2.png',
                  fit: BoxFit.fill,
                  scale: 0.4,
                  // ),
                ),
                Positioned(
                  top: deviceHeight * 0.176578034,
                  left: deviceWidth * 0.045686541,
                  right: deviceWidth * 0.012,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/CC-Logo(1).png",
                        scale: 1.8,
                      ),
                      SizedBox(
                        height: deviceHeight * 0.058681,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                          horizontal: deviceHeight * 0.0094017,
                          vertical: deviceWidth * 0.02037037,
                        ),
                        child: Text(
                          "CLUB CALENDAR",
                          // softWrap: true,
                          textAlign: TextAlign.center,
                          style: styles.customStyle(
                              color: Styles.buttonColor, size: 35.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: deviceHeight * 0.052681,
            ),
            Expanded(
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
                    shape: !isPressed
                        ? neu.NeumorphicShape.flat
                        : neu.NeumorphicShape.concave,
                    depth: isPressed
                        ? -4.9687
                        : 4.9687, //MediaQuery.of(context).size.height*0.023,
                    oppositeShadowLightSource: false,
                  ),
                  onPressed: () {
                    var googleSignMe = GoogleSignMeIn();
                    googleSignMe.login();
                    setState(() {
                      isPressed = true;
                    });
                  },
                  child: Container(
                    height: deviceHeight * 0.06599636,
                    width: deviceWidth * 0.76,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * 0.011),
                          child: Image.asset(
                            "assets/icons/google_bg.png",
                            fit: BoxFit.fitHeight,
                            scale: 7,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            " Log in with Google",
                            style: styles.headingStyle(
                                color: Styles.buttonColor,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
