import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const primaryColor = Color(0xffB7935F);
  static const dark_primaryColor = Color(0xff141A2E);
  static const blackColor = Color(0xff242424);
  static const yellowColor = Colors.amber;
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          color: blackColor, fontWeight: FontWeight.w700, fontSize: 30),
      bodyMedium: GoogleFonts.elMessiri(
          color: blackColor, fontWeight: FontWeight.w600, fontSize: 25),
      bodySmall: GoogleFonts.elMessiri(
          color: blackColor, fontWeight: FontWeight.w400, fontSize: 25),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      selectedIconTheme: IconThemeData(color: blackColor),
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
  );
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 30),
        bodyMedium: GoogleFonts.elMessiri(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25),
        bodySmall: GoogleFonts.elMessiri(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 25),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: dark_primaryColor,
        selectedIconTheme: IconThemeData(color: yellowColor),
        unselectedIconTheme: IconThemeData(color: Colors.white),
      ),
      iconTheme: IconThemeData(color: Colors.white));
}
