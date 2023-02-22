import 'package:flutter/material.dart';

//Creating a new custom widget
class Question extends StatelessWidget {
  final String questionText;
  //you add final in front of this property definition here.
  //This tells Dart that this value will never change after its initialization here in the constructor.
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
