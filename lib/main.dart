import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questIdx = 0;

  void handleClickAnswer() {
    setState(() {
      questIdx += 1;
    });
    print(questIdx);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s yout favorite color?',
      'What\'s yout favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello'),
        ),
        body: Column(
          children: [
            Text(
              questions[questIdx],
            ),
            RaisedButton(
              onPressed: handleClickAnswer,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: handleClickAnswer,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: handleClickAnswer,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
