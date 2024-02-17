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
            'assets/images/quiz_logo.png',
            width: 300,
            color: const Color.fromARGB(82, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Learn flutter the fun way!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 185, 181, 166),
            ),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start quiz',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
