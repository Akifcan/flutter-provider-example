import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData customTheme = ThemeData(
  primaryColor: Colors.indigo,
  textTheme: TextTheme(
    headline1: GoogleFonts.mukta(
      color: Colors.red[900],
      fontSize: 16,
      wordSpacing: 2
    ),
    bodyText1: GoogleFonts.roboto(
      fontSize: 15,
      wordSpacing: 3
    ),
    bodyText2: GoogleFonts.roboto(
      fontSize: 19,
      color: Colors.indigo[900]
    )
  )
);