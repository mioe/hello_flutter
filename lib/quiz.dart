import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questIdx;
  final Function handleClickAnswer;

  Quiz({
    required this.questions,
    required this.questIdx,
    required this.handleClickAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questIdx]['text'] as String,
        ),
        ...(questions[questIdx]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(answer['text'] as String, () => handleClickAnswer(answer['score']));
        }).toList()
      ],
    );
  }
}
