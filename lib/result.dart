import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final Function resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get messageLabel {
    String finalText = 'You have completed.';
    if (finalScore > 50) {
      finalText = 'You have got more than 50';
    }
    return finalText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          messageLabel,
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text(
            'Restart Quiz',
            style: TextStyle(fontSize: 30),
          ),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
