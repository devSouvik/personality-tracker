import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Results(this.resultScore, this.resetHandler);

  String get resultValue {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are good';
    } else if (resultScore <= 15) {
      resultText = 'You are average';
    } else if (resultScore <= 25) {
      resultText = 'You are not bad';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(
              resultValue,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 460,),
          FlatButton(color: Colors.blue,
            onPressed: resetHandler,
            child: Text(
              'Play again !! ',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
