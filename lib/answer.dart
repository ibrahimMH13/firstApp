import 'package:flutter/material.dart';
class Answer extends StatelessWidget{
 final VoidCallback selectHandler;
 final String textAnswer;
  Answer(this.selectHandler,this.textAnswer);
  @override
  Widget build(BuildContext context) {
    /*
    // TODO: implement build
    //RaisedButton deprecated to ElevatedButton
        this basiclly will tage main them style without add styleing
    //FlatButton deprecated to TextButton
        this button is text button doesnot have a background 
     outlineButton deprecated to outlinedButton
        
    */
    return Container(
      width: double.infinity,
      color: Colors.blue,
      margin: EdgeInsets.all(5),
      child: ElevatedButton(
              child: Text(textAnswer),
            //  style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.orange)),
            style: ElevatedButton.styleFrom(primary: Colors.blue,onPrimary: Colors.white),
              onPressed:selectHandler,
              ),
    );
  }
}