import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function chooseOption;
  final currentQuestIndex;

  Quiz(
      {@required this.currentQuestIndex,
      @required this.questions,
      @required this.chooseOption});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[currentQuestIndex]['questionText']),
        ...(questions[currentQuestIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => chooseOption(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
