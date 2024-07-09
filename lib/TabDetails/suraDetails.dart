import 'package:flutter/material.dart';
import 'package:islami_app/MyThemeData.dart';
import 'package:islami_app/Providers/myProvider.dart';
import 'package:islami_app/Providers/suraProvider.dart';
import 'package:islami_app/models/suraModel.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatelessWidget {
  const SuraDetails({super.key});

  static const String routeName = "suraDetails";

  @override
  Widget build(BuildContext context) {
    var providerBG = Provider.of<LangProvider>(context);
    SuraModel model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return ChangeNotifierProvider<SuraProvider>(
      create: (context) => SuraProvider()..loadFile(model.index),
      builder: (context, child) {
        var provider = Provider.of<SuraProvider>(context);

        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(providerBG.getBg()),
            fit: BoxFit.fill,
          )),
          child: Scaffold(
            appBar: AppBar(
              title: Text(model.Name,
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
                  itemBuilder: (context, index) {
                    return Text(provider.verses[index]);
                  },
                  itemCount: provider.verses.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
