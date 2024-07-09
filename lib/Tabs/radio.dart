import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/B_Radio.png"),
        SizedBox(
          height: 50,
        ),
        Text(
          "اذاعة القرأن الكريم",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/back.png"),
            Image.asset("assets/images/play.png"),
            Image.asset("assets/images/next.png"),
          ],
        )
      ],
    );
  }
}
