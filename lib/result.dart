import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  final Map<Object, Object> yourAnswer;
  Results(this.resultScore, this.resetHandler, this.yourAnswer);

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
    List<String> _questions = [];
    List<String> _answers = [];
    yourAnswer.forEach((key, value) {
      _questions.add(key);
      _answers.add(value);
    });
    print(_questions);
    print(_answers);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            resultValue,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView.builder(
              itemCount: yourAnswer.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                      title: Text(_questions[index]),
                      subtitle: Text(_answers[index])),
                );
              },
            ),
          ),
          FlatButton(
            color: Colors.blue,
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
