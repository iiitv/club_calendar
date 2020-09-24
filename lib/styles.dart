import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/rendering.dart';

class Styles {
  static double elevation = 10.0;
  static const Color backgroundColor = Color(0xff313131);
  static const Color buttonColor = Color(0xffF48076);
  static const Color fontColor = Color(0xffE5E5E5);
  static const String googleImage = "assets/icons/google_bg.png";
  static const String logoImage = "assets/icons/CC-Logo(1).png";
  Icon getIcon(IconData iconData, {colour = buttonColor, defaultSize = 21}) {
    return Icon(
      iconData,
      color: colour,
      size: defaultSize,
    );
  }

  TextStyle customStyle(
      {color = fontColor, size = 18.0, fontWeight = FontWeight.w400}) {
    return GoogleFonts.montserrat(
        fontSize: size, color: color, fontWeight: fontWeight);
  }

  TextStyle titleStyle({color = fontColor}) {
    return GoogleFonts.montserrat(
        fontSize: 24, color: color, fontWeight: FontWeight.w500);
  }

  TextStyle headingStyle({color = fontColor, fontWeight = FontWeight.w500}) {
    return GoogleFonts.montserrat(
        fontSize: 20, color: color, fontWeight: fontWeight);
  }

  TextStyle descriptionStyle({color = fontColor}) {
    return GoogleFonts.roboto(
        fontSize: 18, color: color, fontWeight: FontWeight.w400);
  }

  List<BoxShadow> shadowToContainer() {
    return [
      BoxShadow(
        color: Color(0xff585858),
        blurRadius: 12,
        offset: Offset(-4, -4),
      ),
      BoxShadow(
        color: Color(0xff000000),
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
}
