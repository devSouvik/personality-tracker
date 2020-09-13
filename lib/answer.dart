import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answerText;

  Answer(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green[100],
      child: RaisedButton(
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: handler,
        color: Colors.blue[300],
      ),
    );
  }
}
