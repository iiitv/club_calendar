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
        deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Container(
        height: deviceHeight * 0.91,
        child: Column(
          children: [
            Stack(
              children: [
                WavyHeader(
                  color: Color(0xff575757),
                ), //dimgray
                WavyHeader(
                  color: Color(0xff434343),
                ), //darkslategray
              ],
            ),
            Container(
              child: Image.asset(
                "assets/icons/CC-Logo(1).png",
              ),
              height: deviceHeight * 0.2317,
            ),
            SizedBox(
              height: deviceHeight * 0.058681,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "CLUB CALENDER",
                // softWrap: true,
                textAlign: TextAlign.center,
                style: GoogleFonts.ubuntu(
                    color: Styles.buttonColor,
                    fontSize: deviceHeight * 0.045511,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.052681,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RaisedButton(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(deviceHeight * 0.03634),
                    // side: BorderSide(color: Colors.red)
                  ),
                  color: Styles.backgroundColor,
                  onPressed: () {
                    var googleSignMe =
                        GoogleSignMeIn(whatToDo: 1, context: context);
                    googleSignMe.check();
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
                          ),
                        ),
                        Flexible(
                          child: Text(
                            " Log in with Google",
                            style: GoogleFonts.montserrat(
                                fontSize: 24,
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

class WavyHeader extends StatelessWidget {
  final Color color;
  WavyHeader({@required this.color});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        color: color,
        height: MediaQuery.of(context).size.height * 0.223898,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.bottomLeft,
        //     // colors: colorList,
        //     end: Alignment.topRight,
        //   ),
        // ),
      ),
      clipper: BottomWave(MediaQuery.of(context).size.height,
          MediaQuery.of(context).size.height),
    );
  }
}

class BottomWave extends CustomClipper<Path> {
  double deviceHeight, deviceWidth;
  BottomWave(this.deviceHeight, this.deviceWidth);
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - deviceHeight * 0.02634);

    var secondControlPoint = Offset(size.width / 4, size.height);
    var secondEndPoint =
        Offset(size.width / 2.25, size.height - deviceHeight * 0.046096);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var firstControlPoint = Offset(
        size.width - (size.width / 3.25), size.height - deviceHeight * 0.12775);
    var firstEndPoint =
        Offset(size.width, size.height - deviceHeight * 0.10536);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height - deviceHeight * 0.052681);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }
}
