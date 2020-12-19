import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final Function clickedbutt;
  final int index;

  Quiz(@required this.questionList, @required this.index,
      @required this.clickedbutt);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionList[index]['QuestionText'],
        ),
        ...(questionList[index]['answer'] as List<Map<String, Object>>).map(
          (answer) {
            return Answer(() => clickedbutt(answer['score']), answer['text']);
          },
        ).toList(),
      ],
    );
  }
}
