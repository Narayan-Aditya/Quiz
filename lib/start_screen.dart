import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz_bg.png",
            width: 250,
          ),
          const SizedBox(height: 40),
          const Text(
            "Ready for a quiz ?",
            style: TextStyle(
              color: Color.fromARGB(255, 207, 222, 240),
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 220, 229, 245),
              backgroundColor: const Color.fromARGB(249, 111, 59, 235),
              fixedSize: const Size.fromHeight(69)
            ),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            icon: const Icon(Icons.arrow_circle_right),
          ),
        ],
      ),
    );
  }
}
