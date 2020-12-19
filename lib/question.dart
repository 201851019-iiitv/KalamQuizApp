import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionstr;

  Question(this.questionstr);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionstr,
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
