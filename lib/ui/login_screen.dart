import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../styles.dart';
import '../util/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height,
        deviceWidth = MediaQuery.of(context).size.width,aspectRatio=MediaQuery.of(context).size.aspectRatio;
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
                  scale: 0.3,
                ),
                Image.asset(
                  'assets/icons/Vector2.png',
                  fit: BoxFit.fill,
                  scale: 0.2,
                  // ),
                ),
                Positioned(
                  top: deviceHeight * 0.178034,
                  left: deviceWidth * 0.0541171296,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/CC-Logo(1).png",
                        scale: 1.6,
                      ),
                      SizedBox(
                        height: deviceHeight * 0.038681,
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: deviceHeight * 0.0094017,
                            vertical: deviceWidth * 0.02037037),
                        child: Text(
                          "CLUB CALENDER",
                          // softWrap: true,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              color: Styles.buttonColor,
                              fontSize:
                                   aspectRatio*
                                     75,
                              fontWeight: FontWeight.w400),
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
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  elevation: 7,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(deviceHeight * 0.03634),
                    // side: BorderSide(color: Colors.red)
                  ),
                  color: Styles.backgroundColor,
                  onPressed: () {
                    var googleSignMe =
                        GoogleSignMeIn();
                    googleSignMe.login();
                  },
                  child: Container(
                    height: deviceHeight * 0.07675852,
                    width: deviceWidth * 0.76,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * 0.011),
                          child: Image.asset(
                            "assets/icons/google_bg.png",
                            fit: BoxFit.fitHeight,
                            scale: 1.5,
                          ),
                        ),
                        Flexible(
                          child: Text(
                            " Log in with Google",
                            style: GoogleFonts.montserrat(
                                fontSize: aspectRatio * 45,
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
