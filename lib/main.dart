import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _currentQuestIndex = 0;
  var questions = ['What is your name?', 'What is your favourite color?'];

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
          Question(questions[_currentQuestIndex]),
          RaisedButton(
            onPressed: _chooseOption,
            child: Text('Option 1'),
          ),
          RaisedButton(
            onPressed: () => {print('Option 4')},
            child: Text('Option 2'),
          ),
          RaisedButton(
            onPressed: () => print('option 3 choosen'),
            child: Text('Option 3'),
          ),
        ],
      ),
    ));
  }
}
