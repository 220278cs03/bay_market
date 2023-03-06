import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  Style._();

  //------------------------Colors--------------------------//
  static const primaryBlue = Color(0xff033C67);
  static const primaryTextColor = Color(0xff022B4A);
  static const link = Color(0xff0085FF);
  static const white = Color(0xffFFFFFF);
  static const bgBlue = Color(0xffE7F8FF);
  static const bgSearch = Color(0xffF6F8FA);
  static const strokeSearch = Color(0xffE4EFF3);
  static const primaryGreyDark = Color(0xff8CA6B7);
  static const orange =
      LinearGradient(colors: [Color(0xffFF960C), Color(0xffFFD166)]);

  //-----------------------Text Style ------------------------//

  static textStyleThin({
    double size = 14,
    Color color = primaryTextColor,
  }) {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w400, color: color, fontSize: size);
  }

  static textStyleNormal({
    double size = 14,
    Color color = primaryTextColor,
  }) {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w500, color: color, fontSize: size);
  }

  static textStyleBold({
    double size = 14,
    Color color = primaryTextColor,
  }) {
    return GoogleFonts.roboto(
        fontWeight: FontWeight.w700, color: color, fontSize: size);
  }
}
