import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle get homeTitles =>  TextStyle(
    fontSize: 16,
    fontFamily: GoogleFonts.outfit().fontFamily,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle get heading => TextStyle(
    fontSize: 15,
    fontFamily: GoogleFonts.outfit().fontFamily,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static TextStyle get productHeading =>  TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.outfit().fontFamily,
    color: Colors.black,
  );
  static TextStyle get productDescription =>  TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.outfit().fontFamily,
    color: Colors.grey,
  );

  static TextStyle get hintText => const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black54,
  );

  static TextStyle get labelText => const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}
