import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answerText;

  Answer(this.handler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: 350,
      height: 50,
      // color: Colors.green[100],
      child: RaisedButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: handler,
        color: Colors.blue[300],
      ),
    );
  }
}
