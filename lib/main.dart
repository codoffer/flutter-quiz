import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestIndex = 0;

  final questions = const [
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
      body: Column(
        children: [
          Question(questions[_currentQuestIndex]['questionText']),
          ...(questions[_currentQuestIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_chooseOption, answer);
          }).toList(),
        ],
      ),
    ));
  }
}
