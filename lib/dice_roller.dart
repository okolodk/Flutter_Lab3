import 'package:flutter/material.dart';
import 'dart:math';
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override 
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}
final randomizer = Random();
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
                Image.asset(
                    'assets/images/dice-$currentDiceRoll.png',
                    width: 300,
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: rollDice, 
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.lime,
                        textStyle: const TextStyle (
                            fontSize: 30,
                        ),
                    ),
                    child: Text("Roll Dice")
                ),
            ],
        );
  }
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      print('Изменили картинку');
    });
  }
}