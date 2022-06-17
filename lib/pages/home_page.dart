import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                offset: const Offset(0, 15),
                blurRadius: 25,
              ),
            ],
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              color: Colors.black,
              width: 1,
            ),
          ),
          child: const Text("Welcome! My name is Ivan"),
        ),
      ),
    );
  }
}