import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/card/intro_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntroCard(
          text: "Hay, I'm Ivan",
        ),
      ),
    );
  }
}
