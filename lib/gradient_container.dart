import 'package:flutter/material.dart';
import 'package:first_app/home_text_widget.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Variables
  final List<Color> colorsList;
  final String welcomeText;

  // Constructor
  const GradientContainer({
    super.key,
    required this.colorsList,
    required this.welcomeText,
  });

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colorsList,
            // colors: [
            //   Colors.indigo,
            //   Colors.indigoAccent,
            // ],
            begin: startAlignment,
            end: endAlignment,
          ),
          color: Colors.white60),
      child: Center(
        child: HomeText(welcomeText),
      ),
    );
  }
}
