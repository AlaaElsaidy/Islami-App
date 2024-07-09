import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/ahadethModel.dart';

class AhadethProvider extends ChangeNotifier {
  List<AhadethModel> hadethData = [];

  loadFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadethOne = ahadeth[i];
        List<String> hadethLines = hadethOne.trim().split("\n");
        String title = hadethLines[0];
        print(title);
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        hadethData.add(AhadethModel(content: content, title: title));
        notifyListeners();
      }
    });
  }
}
