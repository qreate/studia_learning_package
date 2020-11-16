import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class StudiaConfettiWrapper extends StatelessWidget {
  final ConfettiController confettiController;

  const StudiaConfettiWrapper({Key key, this.confettiController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ConfettiWidget(
        confettiController: confettiController,
        blastDirectionality: BlastDirectionality
            .explosive, // don't specify a direction, blast randomly
        shouldLoop: true, // start again as soon as the animation is finished
        colors: const [
          Colors.green,
          Colors.blue,
          Colors.pink,
          Colors.orange,
          Colors.purple
        ], // manually specify the colors to be used
      ),
    );
  }
}
