import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int ResultScore;
  final Function resetHandler;

  Result(this.ResultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (ResultScore == 16 || ResultScore == 15) {
      resultText = 'YOU ARE A GIGA CHAD';
    } else if (ResultScore <= 14 && ResultScore > 10) {
      resultText = 'Your Manly';
    } else if (ResultScore <= 10 && ResultScore >= 6) {
      resultText = 'Tu Manly Nahi hai Yaar';
    } else {
      resultText = 'WHY ARE YOU GAY';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlineButton(
            onPressed: resetHandler,
            child: Text('I want to test Myself Agian'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
