import 'package:flutter/material.dart';
import 'package:quiz_app/anser_screen/index_screen.dart';

class AnswerSummery extends StatelessWidget {
  AnswerSummery({super.key, required this.summery});

  List<Map<String, Object>> summery = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summery.map((data) {
            return Row(
              children: [
                //index goes here
                IndexScreen(data),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        ((data['question'].toString())),
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 21),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['user_answer'].toString()),
                        // style: const TextStyle(
                        //     backgroundColor: Colors.white, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        ((data['correct_answer'].toString())),
                        style: TextStyle(color: Colors.green[100]),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
