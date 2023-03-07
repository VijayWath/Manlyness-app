import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp((MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final question = const [
    {
      'questiontext': 'Tell me your Favorite color?',
      'answers': [
        {'text': 'Orange', 'score': 2},
        {'text': 'Black', 'score': 4},
        {'text': 'Pink', 'score': 1},
        {'text': 'Dark Blue', 'score': 3}
      ],
    },
    {
      'questiontext': 'Which type of girl you like? ',
      'answers': [
        {'text': 'Milf', 'score': 4},
        {'text': 'teen', 'score': 2},
        {'text': 'Anime girls', 'score': 3},
        {'text': 'I like every girl I see', 'score': 1}
      ],
    },
    {
      'questiontext': 'Tell me Breast size of girl you have crush on',
      'answers': [
        {'text': 'BIG', 'score': 3},
        {'text': 'Medium', 'score': 2},
        {'text': 'small', 'score': 1},
        {'text': 'Anime Style', 'score': 4}
      ],
    },
    {
      'questiontext': 'Which anime suits you the most?',
      'answers': [
        {'text': 'Death Note', 'score': 3},
        {'text': 'Overflow', 'score': 4},
        {'text': 'Spy x Family', 'score': 2},
        {'text': 'I do not watch Anime(Normie)', 'score': 1}
      ],
    },
  ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < question.length) {
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Manlyness Calculator'),
          ),
          body: questionIndex < question.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex,
                  question: question,
                )
              : Result(totalScore, resetQuiz)),
    );
  }
}
