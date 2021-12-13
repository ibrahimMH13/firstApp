//package
import 'package:flutter/material.dart';
//file

import './quiz.dart';
import './result.dart';
void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    // TODO: implement createState
   return _myAppState();
  }

}
class _myAppState extends State<myApp>{
  var _questionIndex = 0;
   var _totalScore   = 0;
   void _restartQuiz(){
     setState(() {
       _questionIndex = 0;
       _totalScore    = 0;
     });
   }
  final _questions = const [
          {
          'text':"What's your phone?",
          'answers':[
            {'text':'iphone','score':10},
            {'text':'samsung','score':8},
            {'text':'Nokia','score':3},
            {'text':'Xiaomi','score':5}],
          },
        {
          'text':"What's your job?",
          'answers':[
            {'text':'doctor','score':10},
            {'text':'nurse','score':3},
            {'text':'IT MAN','score':8},
            {'text':'Worker','score':2}
            ],
        },
        {
          'text':"how old are you?",
          'answers':[
            {'text':'25','score':3},
            {'text':'36','score':3},
            {'text':'40','score':4},
            {'text':'29','score':10}
            ],
        },
        {
          'text':"where are you from?",
          'answers':[
            {'text':'Gaza','score':10},
            {'text':'Turkey','score':3},
            {'text':'Jordan','score':5},
            {'text':'Qatar','score':10}
            ],
        }
      ];
  void _anwserQuestion(int score){
    _totalScore += score;
    setState((){
         _questionIndex++;
    });
   if(_questions.length > _questionIndex){
   }else{
     print('done');
   }
  }
  Widget build(BuildContext context){
     
      return MaterialApp(home: Scaffold(
        appBar: AppBar(title: const Text('First App'),
        ),
        body: _questions.length > _questionIndex?Quiz(
          anwserQuestion: _anwserQuestion ,
          questions: _questions,
          questionId: _questionIndex,
          ):
       Result(_totalScore,_restartQuiz),
      ),
      );
  }
}