import 'dart:ffi';

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questIdx = 0;

  void _handleClickAnswer() {
    setState(() {
      _questIdx += 1;
    });
    print(_questIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'text': 'What\'s your favorite color?',
        'answers': ['Yellow', 'Pink', 'Red', 'Green'],
      },
      {
        'text': 'What\'s your favorite animal?',
        'answers': ['Cat', 'Dog', 'Rat', 'Fish', 'Rabbit', 'Lion'],
      },
      {
        'text': 'Who\'s your favorite programer?',
        'answers': ['misha', 'misha', 'misha'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questIdx]['text'] as String,
            ),
            ...(questions[_questIdx]['answers'] as List<String>).map((answer) {
              return Answer(answer, _handleClickAnswer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
