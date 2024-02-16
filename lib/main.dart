import 'package:flutter/material.dart';
import 'package:islami_app/Home/home_screen.dart';
import 'package:islami_app/MyThemeData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home_Screen.routeName,
      routes: {Home_Screen.routeName: (context) => Home_Screen()},
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}