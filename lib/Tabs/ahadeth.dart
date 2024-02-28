import 'package:flutter/material.dart';
import 'package:islami_app/Providers/ahadethProvider.dart';
import 'package:islami_app/TabDetails/ahadethDetails.dart';
import 'package:islami_app/models/ahadethModel.dart';
import 'package:provider/provider.dart';

class Ahadeth extends StatelessWidget {
  Ahadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AhadethProvider>(
      create: (context) => AhadethProvider()..loadFile(),
      builder: (context, child) {
        var provider = Provider.of<AhadethProvider>(context);
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
                                  content: provider.hadethData[index].content,
                                  title: provider.hadethData[index].title));
                        },
                        child: Text(
                          provider.hadethData[index].title,
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
                  itemCount: provider.hadethData.length),
            )
          ],
        );
      },
    );
  }
}
