import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  final question = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'red', 'score': 9},
        {'text': 'blue', 'score': 8},
        {'text': 'green', 'score': 5},
        {'text': 'yelow', 'score': 2},
      ]
    },
    {
      'questionText': 'Who is your favourite teacher?',
      'answers': [
        {'text': 'tim', 'score': 9},
        {'text': 'paul', 'score': 8},
        {'text': 'carlos', 'score': 5},
        {'text': 'bob', 'score': 2},
      ]
    },
    {
      'questionText': 'What is your favourite game?',
      'answers': [
        {'text': 'table tennis', 'score': 9},
        {'text': 'hockey', 'score': 8},
        {'text': 'cricket', 'score': 5},
        {'text': 'football', 'score': 2},
      ]
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;
  Map<Object, Object> _yourAnswer = {};
  void _resetGame() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score, Map<Object, Object> yourAnswer) {
    _totalScore += score;
    _yourAnswer.addAll(yourAnswer);
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < question.length) {
      print('you got more question on the way !! ');
      print(_yourAnswer.toString());
    } else {
      print('you did it');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _questionIndex < question.length
            ? Quiz(
                question: question,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion)
            : Results(_totalScore, _resetGame, _yourAnswer),
        backgroundColor: const Color(0xFF252C4A),
      ),
    );
  }
}
