import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:provider/provider.dart';

import '../Providers/myProvider.dart';

class LanguageBottomSheet extends StatelessWidget {
  LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LangProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.changeLang("en");
                },
                child: Text("English",
                    style: GoogleFonts.elMessiri(
                      color: provider.langCode == "en"
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor,
                      fontSize: 35,
                    )),
              ),
              if (provider.langCode == "en") ...[
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
                  provider.changeLang("ar");
                },
                child: Text("Arabic",
                    style: GoogleFonts.elMessiri(
                      color: provider.langCode == "ar"
                          ? MyThemeData.primaryColor
                          : MyThemeData.blackColor,
                      fontSize: 35,
                    )),
              ),
              if (provider.langCode == "ar") ...[
                Icon(Icons.done_all_outlined,
                    size: 30, color: MyThemeData.primaryColor),
              ]
            ],
          )
        ],
      ),
    );
  }
}
