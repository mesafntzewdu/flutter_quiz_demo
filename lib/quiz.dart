import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  Quiz(this.onAnswerTab, {super.key});
  void Function(String answer) onAnswerTab;

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = ResultScreen(
          selectedAnswers: selectedAnswers,
        );
      });
    }
  }

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(onAnswerTab: chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 45, 80, 175),
                Color.fromARGB(255, 130, 91, 202),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
