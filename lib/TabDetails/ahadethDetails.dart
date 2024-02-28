import 'package:flutter/material.dart';
import 'package:islami_app/Providers/myProvider.dart';
import 'package:islami_app/models/ahadethModel.dart';
import 'package:provider/provider.dart';

import '../MyThemeData.dart';

class AhadethDetails extends StatelessWidget {
  const AhadethDetails({super.key});

  static const String routeName = "ahadethDetails";

  @override
  Widget build(BuildContext context) {
    var providerBG = Provider.of<LangProvider>(context);
    var data = ModalRoute.of(context)!.settings.arguments as AhadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(providerBG.getBg()),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
          appBar: AppBar(
            title: Text("${data.title}",
                style: Theme.of(context).textTheme.bodyLarge),
          ),
          body: Center(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: providerBG.themeMode == ThemeMode.light
                        ? Colors.white
                        : MyThemeData.dark_primaryColor),
                margin: EdgeInsets.all(23),
                padding: EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                      "${data.content[index]}",
                      style: Theme.of(context).textTheme.bodySmall),
                  itemCount: data.content.length,
                )),
          )),
    );
  }
}
