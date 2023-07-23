import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeNumber = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1; // 1 to 6
    setState(() {
      activeNumber = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeNumber,
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rollDice,
          child: Image.asset(
            activeNumber,
            width: 150,
          ),
        )
      ],
    );
  }
}
