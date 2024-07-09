import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/Providers/myProvider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var providerBG = Provider.of<LangProvider>(context);
    var provider = Provider.of<LangProvider>(context);
    return Container(
        color: providerBG.themeMode == ThemeMode.light
            ? Colors.white
            : MyThemeData.dark_primaryColor,
        height: MediaQuery.of(context).size.height * .5,
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          provider.changeTheme(ThemeMode.light);
                        },
                        child: Text(
                          "Light",
                          style: GoogleFonts.elMessiri(
                              color: provider.themeMode == ThemeMode.light
                                  ? MyThemeData.primaryColor
                                  : Colors.white,
                              fontSize: 30),
                        )),
                    if (provider.themeMode == ThemeMode.light) ...[
                      Icon(Icons.done_all_outlined,
                          size: 30, color: MyThemeData.primaryColor),
                    ]
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            provider.changeTheme(ThemeMode.dark);
                          },
                          child: Text("Dark",
                              style: GoogleFonts.elMessiri(
                                color: provider.themeMode == ThemeMode.dark
                                    ? MyThemeData.yellowColor
                                    : MyThemeData.blackColor,
                                fontSize: 30,
                              ))),
                      if (provider.themeMode == ThemeMode.dark) ...[
                        Icon(Icons.done_all_outlined,
                            size: 30, color: MyThemeData.primaryColor),
                      ]
                    ]),
              ],
            )));
  }
}
