import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What is your name?',
      'answers': [
        {'text': 'John', 'score': 10},
        {'text': 'Bob', 'score': 10},
        {'text': 'Ram', 'score': 10}
      ]
    },
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'White', 'score': 20},
        {'text': 'Black', 'score': 10},
        {'text': 'Orange', 'score': 40}
      ]
    },
    {
      'questionText': 'Which is your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 20},
        {'text': 'Cat', 'score': 10},
        {'text': 'Elephant', 'score': 30}
      ]
    },
  ];

  void _chooseOption(int score) {
    if (_currentQuestIndex < _questions.length) {}
    setState(() {
      _currentQuestIndex++;
    });
    //print(_currentQuestIndex);
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _currentQuestIndex < _questions.length
          ? Quiz(
              questions: _questions,
              currentQuestIndex: _currentQuestIndex,
              chooseOption: _chooseOption,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
