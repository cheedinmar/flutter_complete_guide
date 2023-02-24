import 'package:flutter/material.dart';

//Creating a new custom widget
class Question extends StatelessWidget {
  final String questionText;
  //you add final in front of this property definition here.
  //This tells Dart that this value will never change after its initialization here in the constructor.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    //styling our text
    return Container(
      width: double.infinity,
      //container can take as much size as the width it can gets
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
    // textAlign is a enum which is a list of predefined values. The idea here simply is that there are different kind of values you can assign for alignment
    //like center, left, right and so on
  }
}
