import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Results(this.resultScore, this.resetHandler);

  String get resultValue {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'you are good';
    } else if (resultScore <= 15) {
      resultText = 'you are average';
    } else if (resultScore <= 25) {
      resultText = 'you are not bad';
    } else {
      resultText = 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultValue,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text(
              'play again !! ',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
