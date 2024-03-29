import 'package:flutter/material.dart';
import 'package:my_portfolio/example/projects.dart';
import 'package:my_portfolio/helpers/responsive.dart';
import 'package:my_portfolio/widgets/card/project_card.dart';
import 'package:my_portfolio/widgets/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget mobileTabletBuilder(double height) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(
            project: projects[index],
          );
        },
      ),
    );
  }

  Widget desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ProjectCard(project: projects[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: const Icon(
          Icons.share,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Projects",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: 350,
                      child: Responsive(
                          mobile: mobileTabletBuilder(350),
                          tablet: mobileTabletBuilder(450),
                          desktop: desktopBuilder()))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
