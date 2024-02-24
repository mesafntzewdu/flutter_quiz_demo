import 'package:flutter/material.dart';
import 'package:quiz_app/anser_screen/answer_summery.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen/quiz.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.selectedAnswers});
  List<String> selectedAnswers = [];

  List<Map<String, Object>> getSummeryData() {
    List<Map<String, Object>> summery = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summery.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i]
      });
    }

    return summery;
  }

  @override
  Widget build(context) {
    var getUserAnsData = getSummeryData();
    final questionSize = questions.length;
    final rightAnswer = getSummeryData().where((element) {
      return element['user_answer'] == element['correct_answer'];
    }).length;

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
              'You answered $rightAnswer out of $questionSize questions correclty!',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            AnswerSummery(summery: getUserAnsData),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              label: const Text('Restart'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Quiz(
                          (answer) {},
                        )));
              },
              icon: const Icon(Icons.history),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
