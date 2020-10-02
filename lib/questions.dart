import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 100,
        bottom: 300,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 25, color: const Color(0xFFEFEFF2)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
