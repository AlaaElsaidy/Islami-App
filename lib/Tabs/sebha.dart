import 'package:flutter/material.dart';
import 'package:islami_app/Providers/sebhaProvider.dart';
import 'package:provider/provider.dart';

class Sebha extends StatelessWidget {
  Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SebhaProvider(),
      builder: (context, child) {
        var provider = Provider.of<SebhaProvider>(context);
        return Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset("assets/images/sebha_head.png", fit: BoxFit.fill),
                  Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: InkWell(
                          onTap: () {
                            provider.onTab();
                          },
                          child: Image.asset("assets/images/sebha_body.png",
                              fit: BoxFit.fill))),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "عدد التسبيحات",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 80,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffB7935F),
                    borderRadius: BorderRadius.circular(20)),
                child: Text("${provider.counter}",
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 250,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xffB7935F),
                    borderRadius: BorderRadius.circular(20)),
                child: Text("${provider.tasbehat[provider.index]}",
                    style: Theme.of(context).textTheme.bodySmall),
              )
            ],
          ),
        );
      },
    );
  }
}
