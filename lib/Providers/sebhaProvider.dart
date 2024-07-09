import 'package:flutter/cupertino.dart';

class SebhaProvider extends ChangeNotifier {
  int counter = 0;

  List<String> tasbehat = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا حول ولا قوة الا بالله"
  ];

  int index = 0;

  onTab() {
    counter++;
    if (counter == 33) {
      index++;
      counter = 0;
    }
    if (index == tasbehat.length) {
      index = 0;
    }
    notifyListeners();
  }
}
