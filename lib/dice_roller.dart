import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // No build methods for StategfulWidgets

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImgNum = 1;
  void rollDice() {
    setState(() {
      activeImgNum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$activeImgNum.png',
          width: 200,
        ),
        ElevatedButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: Colors.amber,
              textStyle: const TextStyle(fontSize: 21),
            ),
            child: const Text('Roll the Dice!'))
      ],
    );
  }
}
