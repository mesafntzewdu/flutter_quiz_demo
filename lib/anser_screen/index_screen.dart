import 'package:flutter/material.dart';

class IndexScreen extends StatefulWidget {
  IndexScreen(this.answerData, {super.key});

  Map<String, Object> answerData;

  @override
  State<IndexScreen> createState() {
    return _IndexScreenState();
  }
}

class _IndexScreenState extends State<IndexScreen> {
  @override
  Widget build(BuildContext context) {
    var indexColor = false;
    if (widget.answerData['user_answer'].toString() ==
        widget.answerData['correct_answer'].toString()) {
      setState(() {
        indexColor = true;
      });
    }

    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: CircleAvatar(
        backgroundColor:
            indexColor == true ? Colors.green[200] : Colors.red[200],
        child: Text(
          ((int.parse(widget.answerData['question_index'].toString())) + 1)
              .toString(),
        ),
      ),
    );
  }
}
