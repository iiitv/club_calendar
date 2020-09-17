import 'package:club_calendar/util/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  static const routeName = "/loginScreen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

List<Color> colorList = [
  Colors.purple[300],
  Color.fromRGBO(131, 58, 199, 1),
  Color.fromRGBO(98, 63, 215, 1),
  Color.fromRGBO(98, 63, 215, 1),
];

class _LoginScreenState extends State<LoginScreen> {
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height,
        deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromRGBO(34, 38, 76, 1),
      body: Container(
        height: deviceHeight * 0.91,
        child: Column(
          children: [
            WavyHeader(),
            Container(
              child: Image.asset(
                "assets/icons/CC-Logo (1).png",
              ),
              height: deviceHeight * 0.1517,
            ),
            SizedBox(
              height: deviceHeight * 0.058681,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Welcome to Your Club Calender!",
                // softWrap: true,
                textAlign: TextAlign.center,
                style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: deviceHeight * 0.039511,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: deviceHeight * 0.052681,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {
                    var googleSignMe =
                        GoogleSignMeIn(whatToDo: 1, context: context);
                    googleSignMe.check();
                  },
                  child: Container(
                    height: deviceHeight * 0.0675852,
                    width: deviceWidth * 0.8,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: colorList,
                        end: Alignment.topRight,
                      ),
                      borderRadius:
                          BorderRadius.circular(deviceHeight * 0.02634),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: deviceWidth * 0.011),
                          child: Image.asset(
                            "assets/icons/google_bg.png",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            " Sign In with Google",
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: deviceHeight * 0.02711292,
                            ),
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
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.223898,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            colors: colorList,
            end: Alignment.topRight,
          ),
        ),
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
