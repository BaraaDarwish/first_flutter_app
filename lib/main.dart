import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import './answer.dart';
import './quiz.dart';
import './Result.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final  _questions =  const [
  {
    'questionText': 'fav color',
    'answers':['Black' , 'Red' , 'Blue'],

  },
    {
    'questionText': 'fav game',
    'answers':['cs' , 'Go' , 'apex'],

  },
    {
    'questionText': 'fav name',
    'answers':['baraa' , 'Baran' , 'Berat'],

  },
  ];

  int _qIndex = 0 ;
void _answerQuestion(){

    setState(() {
     _qIndex++; 
    });
  
}
  @override
  Widget build(BuildContext context){

    return MaterialApp(home: Scaffold(appBar: AppBar(title:Text('Flutter is looking fun')),
    body:_qIndex < _questions.length ?  
    Quiz(
    answerQuestion: _answerQuestion
    ,qIndex: _qIndex
    ,questions: _questions
    ,)
    : Result()
    ,)
    ,);
  }
}

