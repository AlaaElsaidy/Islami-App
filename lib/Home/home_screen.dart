import 'package:flutter/material.dart';
import 'package:islami_app/Providers/myProvider.dart';
import 'package:islami_app/Tabs/ahadeth.dart';
import 'package:islami_app/Tabs/quran.dart';
import 'package:islami_app/Tabs/radio.dart';
import 'package:islami_app/Tabs/sebha.dart';
import 'package:islami_app/Tabs/settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
    var provider = Provider.of<LangProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.getBg()),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_name,
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
