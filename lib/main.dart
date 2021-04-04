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

  final _questions = const [
    {
      'questionText': 'What is your name?',
      'answers': ['John', 'Bob', 'Ram']
    },
    {
      'questionText': 'What is your favourite color?',
      'answers': ['White', 'Black', 'Orange']
    },
    {
      'questionText': 'Which is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Elephant']
    },
  ];

  void _chooseOption() {
    if (_currentQuestIndex < _questions.length) {}
    setState(() {
      _currentQuestIndex++;
    });
    print(_currentQuestIndex);
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
          : Result(),
    ));
  }
}
