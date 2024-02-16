import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const primaryColor = Color(0xffB7935F);
  static const blackColor = Color(0xff242424);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          color: blackColor, fontWeight: FontWeight.w700, fontSize: 30),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      selectedIconTheme: IconThemeData(color: blackColor),
      unselectedIconTheme: IconThemeData(color: Colors.white),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
