import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerString ;
  final Function selectHandler;
  Answer(this.selectHandler , this.answerString);

  @override
  Widget build(BuildContext context) {
    return Container (
      width:double.infinity,
      margin:EdgeInsets.fromLTRB(50,10,50,10),
      child:RaisedButton(
      child:Text(answerString , style: TextStyle(color: Colors.white)),
      color: Colors.blue,
      onPressed: selectHandler,
      ),);
  }
}