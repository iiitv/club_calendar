import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class Styles {
  static double elevation = 10.0;
  static const Color backgroundColor = Color(0xff313131);
  static const Color buttonColor = Color(0xffF48076);
  static const Color fontColor = Color.fromRGBO(229, 229, 229, 1);
  static const Color descriptionColor = Color.fromRGBO(204, 203, 203, 1);
  static const Color detailsColor = Color.fromRGBO(187, 187, 187, 1);
  static const String googleImage = "assets/icons/google_bg.png";
  static const String logoImage = "assets/icons/CC-Logo(1).png";

  Widget getIcon(IconData iconData,
      {colour = buttonColor,
      defaultSize = 40.0,
      widthSize = 50.0,
      radius = 43.0}) {
    return Container(
      height: 50,
      width: widthSize,
      padding: EdgeInsets.zero,
      decoration:
          BoxDecoration(boxShadow: shadowToContainer(), shape: BoxShape.circle),
      child: CircleAvatar(
        backgroundColor: Styles.backgroundColor,
        child: Icon(
          iconData,
          size: defaultSize,
          color: colour,
        ),
        radius: radius,
      ),
    );
  }

  TextStyle customStyle(
      {color = fontColor, size = 18.0, fontWeight = FontWeight.w400}) {
    return GoogleFonts.montserrat(
        fontSize: size, color: color, fontWeight: fontWeight);
  }

  TextStyle titleStyle({color = fontColor}) {
    return GoogleFonts.montserrat(
        fontSize: 28, color: color, fontWeight: FontWeight.w500);
  }

  TextStyle headingStyle({color = fontColor, fontWeight = FontWeight.w500}) {
    return GoogleFonts.montserrat(
        fontSize: 20, color: color, fontWeight: fontWeight);
  }

  TextStyle descriptionStyle({color = descriptionColor}) {
    return GoogleFonts.roboto(
        fontSize: 18, color: color, fontWeight: FontWeight.w400);
  }

  TextStyle cardHeadingStyle({color = fontColor, fontWeight= FontWeight.w400}){
    return GoogleFonts.montserrat(
        fontSize: 25, color: color, fontWeight: fontWeight);
  }

  TextStyle cardDurationStyle({color = buttonColor, fontWeight= FontWeight.w400}){
    return GoogleFonts.montserrat(
        fontSize: 16, color: color, fontWeight: fontWeight);
  }





  List<BoxShadow> shadowToContainer() {
    return [
      BoxShadow(
        color: Color.fromRGBO(88, 88, 88, 0.2),
        blurRadius: 12,
        offset: Offset(-4, -4),
      ),
      BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius: 4,
        offset: Offset(4, 4),
      ),
    ];
  }

  List<BoxShadow> shadow2() {
    return [
      BoxShadow(
        // color:backgroundColor,
        color: Color.fromRGBO(0, 0, 0, 0.2),
        blurRadius: 12,
        offset: Offset(4, 4),
      )
    ];
  }

  List<BoxShadow> shadow3() {
    return [
      BoxShadow(
        // color:backgroundColor,
        color: Color.fromRGBO(0, 0, 0, 0.2),
        spreadRadius: -12,
        blurRadius: 12,
        offset: Offset(4, 4),
      )
    ];
  }

  Widget leadingListTile(String imageAddress, {radius = 24.0}) {
    return Container(
      width: 50,
      padding: EdgeInsets.only(bottom: 10),
      decoration:
          BoxDecoration(boxShadow: shadowToContainer(), shape: BoxShape.circle),
      child: CircleAvatar(
        backgroundColor: Styles.backgroundColor,
        child: Image.asset(
          imageAddress,
          scale: 1.3,
        ),
        radius: radius,
      ),
    );
  }

  Widget grid(var styles, List<Map<String, dynamic>> info) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.7,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Container(
        width: 40,
        child: ListTile(
          leading: (info[index]['iconData'] != null)
              ? styles.getIcon(info[index]['iconData'],
                  radius: 30.0, defaultSize: 30.0)
              : styles.leadingListTile(info[index]['image']),
          title: Text(
            info[index]['info'].toString(),
            softWrap: false,
            style: (info[index]['iconData'] != null)
                ? styles.headingStyle(fontWeight: FontWeight.normal)
                : styles.customStyle(size: 20.0,color: Styles.detailsColor),
          ),
          subtitle: (index == 0 && info[index]['iconData'] != null)
              ? Text(
                  info[index]['day'],
                  softWrap: false,
                  style: styles.customStyle(size: 9.0),
                )
              : (info[index]['iconData'] == null)
                  ? null
                  : Text(' '),
        ),
      ),
    );
  }
}
