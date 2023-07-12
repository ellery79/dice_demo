import "package:flutter/material.dart";
// import 'package:dice_demo/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
  GradientContainer(this.colorList, {super.key});
  final List<Color> colorList;

  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print(activeDiceImage);
  }

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colorList,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                activeDiceImage,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )),
                child: const Text("Roll Dice"),
              )
            ],
          ),
        ));
  }
}
