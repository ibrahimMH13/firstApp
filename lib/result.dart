import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
    @override

  final int resultScore;
  final VoidCallback restartHandler;
  Result(this.resultScore,this.restartHandler);
  String get ResultText{
    String txt;
    if(resultScore >= 35){
      txt = 'Yeah,You are rich man  :),,,';
    }else{
  txt = 'Oops, you need work more bro :(  ...';
    }
    return txt;
  }
    Widget build(BuildContext context){
    return Center(
          child: Column(
            children: [
              Text(ResultText,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),
              ),
              TextButton(
                onPressed: restartHandler,
                style: TextButton.styleFrom(primary: Colors.red),
                 child:
                  Text('Play Again'),
                 )
            ],
          ),
        );
    }
}