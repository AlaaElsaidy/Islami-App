import 'package:flutter/material.dart';
import 'package:islami_app/Tabs/ahadeth.dart';
import 'package:islami_app/Tabs/quran.dart';
import 'package:islami_app/Tabs/radio.dart';
import 'package:islami_app/Tabs/sebha.dart';
import 'package:islami_app/Tabs/settings.dart';

class Home_Screen extends StatefulWidget {
  Home_Screen({super.key});

  static const String routeName = "home_screen";

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int index = 0;
  List<Widget> tabs = [Quran(), Sebha(), Ahadeth(), RadioTab(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg3.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            iconSize: 35,
            type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ],
          ),
          body: tabs[index]),
    );
  }
}
