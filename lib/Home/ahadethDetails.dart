import 'package:flutter/material.dart';
import 'package:islami_app/models/ahadethModel.dart';

class AhadethDetails extends StatelessWidget {
  const AhadethDetails({super.key});

  static const String routeName = "ahadethDetails";

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)!.settings.arguments as AhadethModel;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/bg3.png"),
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
                    color: Colors.white),
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
