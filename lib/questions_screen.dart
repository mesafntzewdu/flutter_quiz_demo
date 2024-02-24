import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/quiz_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({required this.onAnswerTab, super.key});
  void Function(String answer) onAnswerTab;
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void currentQestionMethod(String answers) {
      widget.onAnswerTab(answers);
      setState(
        () {
          currentQuestionIndex++;
        },
      );
    }

    var currentQestions = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQestions.text.toString(),
              style: GoogleFonts.amiko(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            ...currentQestions.getShuffledAnswers().map((val) => QuizButton(
                  val,
                  onClick: () {
                    currentQestionMethod(val);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
