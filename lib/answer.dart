import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function choosen;
  final String answer;
  Answer(this.choosen, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 0.0),
      child: RaisedButton(
        color: Colors.blue,
        //textColor: Colors.white,
        child: new Text(
          answer,
          style: new TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: choosen,
      ),
    );
  }
}
