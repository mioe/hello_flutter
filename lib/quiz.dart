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
        RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('(deprecated) RaisedButton'),
          onPressed: () => {},
        ),
        ElevatedButton(
          // style: ButtonStyle(
          //   backgroundColor: MaterialStateProperty.all(Colors.red),
          //   foregroundColor: MaterialStateProperty.all(Colors.white),
          // ),
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            onPrimary: Colors.black,
          ),
          child: Text('RaisedButton -> ElevatedButton'),
          onPressed: () => {},
        ),
        FlatButton(
          textColor: Colors.blue,
          child: Text('(deprecated) FlatButton'),
          onPressed: () => {},
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: Colors.orange,
          ),
          child: Text('FlatButton -> TextButton'),
          onPressed: () => {},
        ),
        OutlineButton(
          borderSide: BorderSide(color: Colors.blue),
          textColor: Colors.blue,
          child: Text('(deprecated) OutlineButton'),
          onPressed: () => {},
        ),
        OutlinedButton(
          child: Text('OutlineButton -> OutlinedButton'),
          style: TextButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.red),
          ),
          onPressed: () => {},
        ),
        Question(
          questions[questIdx]['text'] as String,
        ),
        ...(questions[questIdx]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'] as String,
              () => handleClickAnswer(answer['score']));
        }).toList()
      ],
    );
  }
}
