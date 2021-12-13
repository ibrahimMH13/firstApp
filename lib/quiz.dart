import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget{
  final List<Map<String,Object>> questions;
  final Function  anwserQuestion;
  final int questionId;

  Quiz({
  required   this.anwserQuestion,
  required   this.questions,
  required   this.questionId
     });

  Widget build(BuildContext context){
 return Column(children: [
            Question(questions[questionId]['text'] as String),
           ...(questions[questionId]['answers'] as List<Map<String,Object>>).map((
             answer) {
            return Answer(() => anwserQuestion(answer['score']), answer['text'] as String);
          }).toList()
        ],);
  }
}