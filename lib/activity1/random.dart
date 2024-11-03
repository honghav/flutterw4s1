import 'dart:math';

import 'package:flutter/material.dart';

const String diceImage1 = 'assets/images/dice-1.png';
const String diceImage2 = 'assets/images/dice-2.png';
const String diceImage3 = 'assets/images/dice-3.png';
const String diceImage4 = 'assets/images/dice-4.png';
const String diceImage5 = 'assets/images/dice-5.png';
const String diceImage6 = 'assets/images/dice-6.png';

const List<String> diceImages = [
  diceImage1,
  diceImage2,
  diceImage3,
  diceImage4,
  diceImage5,
  diceImage6,
];
String activeDiceImage = diceImages[0];

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    //  Display the dice 4 !
    int randomIndex = Random().nextInt(diceImages.length);
    setState(() {
      activeDiceImage = diceImages[randomIndex];
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.deepPurple,
    body: Center(child: DiceRoller()),
  ),
));