import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'text': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Yellow', 'score': 10},
        {'text': 'Pink', 'score': 6},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'text': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 6},
        {'text': 'Rat', 'score': 2},
        {'text': 'Fish', 'score': 1},
        {'text': 'Rabbit', 'score': 8},
        {'text': 'Lion', 'score': 4},
      ],
    },
    {
      'text': 'Who\'s your favorite programer?',
      'answers': [
        {'text': 'misha', 'score': 10},
        {'text': 'misha', 'score': 6},
        {'text': 'misha', 'score': 2},
      ],
    },
  ];

  var _questIdx = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questIdx = 0;
      _totalScore = 0;
    });
  }

  void _handleClickAnswer(int score) {
    _totalScore += score;

    setState(() {
      _questIdx += 1;
    });
    print(_questIdx);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: _questIdx < _questions.length
            ? Quiz(
                handleClickAnswer: _handleClickAnswer,
                questIdx: _questIdx,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
