import 'package:flutter/material.dart';
import 'package:islami_app/BottomSheets/languageBottomSheet.dart';
import 'package:islami_app/BottomSheets/themeBottomSheet.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/Providers/myProvider.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  @override
  Widget build(BuildContext context) {
    var providerBG = Provider.of<LangProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Language", style: Theme.of(context).textTheme.bodyMedium),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                // isDismissible: false,
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Container(
                    color: providerBG.themeMode == ThemeMode.light
                        ? Colors.white
                        : MyThemeData.dark_primaryColor,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: LanguageBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: MyThemeData.primaryColor, width: 2),
              ),
              child:
                  Text("Arabic", style: Theme.of(context).textTheme.bodySmall),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text("Theme", style: Theme.of(context).textTheme.bodyMedium),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return ThemeBottomSheet();
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: MyThemeData.primaryColor, width: 2),
              ),
              child:
                  Text("Light", style: Theme.of(context).textTheme.bodySmall),
            ),
          )
        ],
      ),
    );
  }
}
