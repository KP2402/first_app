import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        body: GradientContainer(
          welcomeText: 'Hello Prashant to your new learning !!',
          colorsList: [
            Colors.indigo,
            Colors.indigoAccent,
          ],
        ),
      ),
    ),
  );
}
