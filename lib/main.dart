import 'package:flutter/material.dart';

import './quiz.dart';

import './result.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionList = [
    {
      'QuestionText': 'Kalam Known as',
      'answer': [
        {'text': 'Missile Man', 'score': 4},
        {'text': 'Father of nation', 'score': -1},
        {'text': 'Uncle of Nation', 'score': -1},
        {'text': 'none of the above', 'score': -1},
      ],
    },
    {
      'QuestionText':
          '\'\'Success is when your signature turns into your autograph.\'\'- This Quotes is',
      'answer': [
        {'text': 'APJ Abdul Kalam', 'score': 4},
        {'text': 'Narendra Modi', 'score': -1},
        {'text': 'Pranav Mukharji', 'score': -1},
      ],
    },
    {
      'QuestionText':
          ' This Quotes  say  needs difficulties because to enjoy the success that they need to.\” ',
      'answer': [
        {'text': 'Aryabhatta', 'score': -1},
        {'text': 'APJ Abdul Kalam', 'score': 4},
        {'text': 'SaraBhai', 'score': -1},
      ],
    },
    {
      'QuestionText':
          ' A.P.J Abdul Kalam was awarded the Padma Bhushan, Padma Vibhushan and the Bharat Ratna. ',
      'answer': [
        {'text': 'True', 'score': 4},
        {'text': 'False', 'score': -1},
        {'text': 'Can\'t say', 'score': -1},
      ],
    },
    {
      'QuestionText': ' What is Dr. Kalam\'s dream for India called? ',
      'answer': [
        {'text': 'Vision 2020', 'score': 4},
        {'text': 'India\'s Bright Future', 'score': -1},
        {'text': 'Wings of Fire', 'score': -1},
      ],
    },
    {
      'QuestionText': ' Who was Dr. Kalam\'s mentor and guide?',
      'answer': [
        {'text': 'Swami Sivananda', 'score': 4},
        {'text': 'Aryabhatta', 'score': -1},
        {'text': 'K. R. Narayanan', 'score': -1},
        {'text': 'none of the above', 'score': -1},
      ],
    },
    {
      'QuestionText': ' Where was Dr. Kalam born?',
      'answer': [
        {'text': 'Kochi, Kerala', 'score': -1},
        {'text': 'Chennai,Tamilnadu', 'score': -1},
        {'text': 'Rameswaram, Tamil Nadu', 'score': 4},
        {'text': 'none of the above', 'score': -1},
      ],
    },
    {
      'QuestionText':
          'Dr. Kalam was the chief of India\'s Defence Research and Development Program.',
      'answer': [
        {'text': 'True', 'score': -1},
        {'text': 'False', 'score': 4},
        {'text': 'Can\'t say', 'score': -1},
      ],
    },
    {
      'QuestionText':
          'What is the name of Dr. Kalam\'s inspirational autobiography?',
      'answer': [
        {'text': 'My Experiments with Truth', 'score': 4},
        {'text': 'Wings of Fire', 'score': -1},
        {'text': 'My Struggle', 'score': -1},
        {'text': 'none of the above', 'score': -1},
      ],
    },
  ];

  var index = 0;
  var totalscore = 0;

  //var buttoncolor = Colors.blue;

  void _reset() {
    setState(() {
      index = 0;
      totalscore = 0;
    });
  }

  void clickedbutt(int score) {
    //print(index);
    setState(
      () {
        index++;
        totalscore += score;
      },
    );
    // print("score");
    // print(score);
    // print("totalscore");
    // print(totalscore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/abc.jpg"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'Welcome to Kalam Quiz ',
              style: new TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: index < questionList.length
              ? Quiz(questionList, index, clickedbutt)
              : Result(totalscore, _reset),
        ),
      ),
    );
  }
}
