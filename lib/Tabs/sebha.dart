import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;

  List<String> tasbehat = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا حول ولا قوة الا بالله"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
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
                        onTab();
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
            child:
                Text("$counter", style: Theme.of(context).textTheme.bodySmall),
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
            child: Text("${tasbehat[index]}",
                style: Theme.of(context).textTheme.bodySmall),
          )
        ],
      ),
    );
  }

  onTab() {
    counter++;
    if (counter == 33) {
      index++;
      counter = 0;
    }
    if (index == tasbehat.length) {
      index = 0;
    }
    setState(() {});
  }
}
