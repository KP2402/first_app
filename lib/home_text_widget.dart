import 'package:flutter/material.dart';

class HomeText extends StatelessWidget {
  const HomeText(this.welcomeText, {super.key});

// 'Hello Prashant to your new learning !!'
  final String welcomeText;

  @override
  Widget build(context) {
    return Text(
      welcomeText,
      style: const TextStyle(
          color: Colors.white,
          // backgroundColor: Colors.green,
          fontStyle: FontStyle.italic,
          fontSize: 22,
          decorationStyle: TextDecorationStyle.dotted),
    );
  }
}
