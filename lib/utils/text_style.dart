import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleFoodCard{
  /// appbar home main
  static TextStyle AppbarhmTxt = GoogleFonts.b612(
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  ///other page app bar texts
  static TextStyle Appbarstxt = GoogleFonts.b612(
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle ButtonTxt = GoogleFonts.timmana(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  ///plan page
  static TextStyle TxtCardDetails = GoogleFonts.timmana(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle txtplancardline1 =GoogleFonts.timmana(
      fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black,letterSpacing: 1,shadows: [Shadow(color: Colors.orange,blurRadius: 5,)]
  );
  static TextStyle txtplancardline2  = GoogleFonts.timmana(
      fontSize: 15,fontWeight: FontWeight.w200,color: Colors.black
  );
  static TextStyle txtplancardline3  = GoogleFonts.timmana(
      fontSize: 25,fontWeight: FontWeight.bold,color: Colors.red
  );
  static TextStyle txtplancardline456 = GoogleFonts.timmana(
      fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black
  );
  static TextStyle txtplancardbutton = GoogleFonts.timmana(
    fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white,letterSpacing: 1,
  );

}