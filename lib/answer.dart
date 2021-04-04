import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function chooseOptionHandler;
  final String answerText;

  Answer(this.chooseOptionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: chooseOptionHandler,
        child: Text(answerText),
      ),
    );
  }
}
