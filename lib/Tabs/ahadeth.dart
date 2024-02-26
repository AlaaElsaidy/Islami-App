import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/Home/ahadethDetails.dart';
import 'package:islami_app/models/ahadethModel.dart';

class Ahadeth extends StatefulWidget {
  Ahadeth({super.key});

  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  List<AhadethModel> hadethData = [];

  @override
  Widget build(BuildContext context) {
    if (hadethData.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image.asset("assets/images/ahadethTop.png"),
        Divider(
          color: Color(0xffB7935F),
          thickness: 2,
        ),
        Text(
          "الأحاديث",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
          color: Color(0xffB7935F),
          thickness: 2,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AhadethDetails.routeName,
                          arguments: AhadethModel(
                              content: hadethData[index].content,
                              title: hadethData[index].title));
                    },
                    child: Text(
                      hadethData[index].title,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ));
              },
              separatorBuilder: (context, index) => Divider(
                    color: Color(0xffB7935F),
                    thickness: 2,
                    endIndent: 20,
                    indent: 20,
                  ),
              itemCount: hadethData.length),
        )
      ],
    );
  }

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
      }
      setState(() {});
    });
  }
}
