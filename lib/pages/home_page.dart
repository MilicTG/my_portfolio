import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/card/intro_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IntroCard(text: "Djes"),
              IntroCard(text: "Djes"),
              IntroCard(text: "Djes")
            ],
          ),
        ),
      ),
    );
  }
}
