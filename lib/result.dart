import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    if (resultScore <= 20) {
      return '1';
    } else if (resultScore > 20) {
      return '2';
    } else {
      return '3';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: resetHandler, child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
