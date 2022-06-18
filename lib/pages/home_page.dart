import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/card/project_card.dart';
import 'package:my_portfolio/widgets/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Header(),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Projects",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ProjectCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
