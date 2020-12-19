import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  final int totalscore;
  final Function _reset;
  Result(this.totalscore, this._reset);

  String rs() {
    String s = 'You Total Score is:';
    if (totalscore >= 30)
      s = 'Awesome !! You Total Score is: $totalscore';
    else if (totalscore >= 22)
      s = 'Better !! You Total Score is: $totalscore';
    else if (totalscore >= 15)
      s = 'Good !! You Total Score is: $totalscore';
    else if (totalscore >= 7)
      s = 'Average !! You Total Score is: $totalscore';
    else
      s = 'Poor !! You Total Score is: $totalscore';

    return s;
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            child: Container(
              margin: EdgeInsets.all(4),
              color: Colors.white,
              child: Text(
                rs(),
                style: new TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: RaisedButton(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
              color: Colors.lightGreenAccent,
              child: Text(
                'Restart Quiz',
                style: new TextStyle(
                  fontSize: 35.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              textColor: Colors.yellow,
              onPressed: _reset,
            ),
          ),
        ],
      ),
    );
  }
}
