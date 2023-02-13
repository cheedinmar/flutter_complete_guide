import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//main function is automatically executed when the app launches
//run app is a function which does all the heavy lifting behind the scenes,
// to take a widget we created and draw it onto the screen
//it calls the build method on our widget

class MyApp extends StatelessWidget {
  //this is a so called decorator
  @override

  //every widget in flutter needs to extend stateless or stateful widget
  // and each of those classes wil force you to add a build method
  //because flutter will always call that build method
  Widget build(BuildContext ctx) {
    //the build method returns the ctx argument of type BuildContext
    //fluuter provides the value for the ctx
    return MaterialApp(
      //in the MyApp widget build method here, we have the MaterialApp we are returning
      //which is in turn a widget provided by the fluter team
      // this uses a named argument 'home' and as a vale for this named argument,
      //I pass another widget Text which is also provided by a flutter team
      //Text widget uses positional argument
      //so both text and hello is an argument,
      home: Text('Heggdllo'),
    );
  }
}
// every widget is just a dart class which in the end has a build method
