import 'package:flutter/material.dart';
import 'dart:math';
final randomizer = Random();

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  State<MyContainer> createState() {
    return _MyContainerState();
  }
}

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const constantBGColours = {
  1: [Color.fromRGBO(103, 58, 183, 1), Color.fromRGBO(255, 64, 129, 1)],
  2: [Color.fromRGBO(3, 180, 224, 1), Color.fromRGBO(255, 179, 0, 1)],
  3: [Color.fromRGBO(247, 177, 2, 1), Color.fromRGBO(17, 1, 1, 1)],
  4: [Color.fromRGBO(238, 255, 0, 1), Color.fromRGBO(253, 17, 0, 1)],
  5: [Color.fromRGBO(255, 0, 242, 1), Color.fromRGBO(0, 252, 76, 1)],
  6: [Color.fromRGBO(2, 213, 77, 1), Color.fromRGBO(77, 23, 221, 1)]
};

class _MyContainerState extends State<MyContainer> {
  Color col1 = const Color.fromRGBO(103, 58, 183, 1);
  Color col2 = const Color.fromRGBO(255, 64, 129, 1);
  var currentBG = List<Color>.from(constantBGColours[1]!);

  var activeImgNum = 1;
  void rollDice() {
    setState(() {
      activeImgNum = randomizer.nextInt(6) + 1;
      currentBG = List<Color>.from(constantBGColours[activeImgNum]!);
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: currentBG,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
