import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

    final List<Map<String , Object>> questions;
    final int qIndex;
    final Function answerQuestion;

    Quiz({@required this.questions,@required this.answerQuestion,@required this.qIndex});

  @override
  Widget build(BuildContext context) {

    return Column(children: <Widget>[
           Question(questions[qIndex]['questionText']),
        ...(questions[qIndex]['answers'] as List<String>).map((answer) 
        {
          return Answer(answerQuestion , answer);
        }).toList()
    ],);
  }
}