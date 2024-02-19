import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/suraModel.dart';

class SuraDetails extends StatefulWidget {
  const SuraDetails({super.key});

  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraModel model = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg3.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(model.Name, style: Theme.of(context).textTheme.bodyLarge),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(verses[index]);
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = sura.split("\n");
    verses = lines;
    setState(() {});
  }
}
