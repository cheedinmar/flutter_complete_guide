import 'package:flutter/material.dart';
//import our new custom widget Question
import './question.dart';

void main() {
  runApp(MyApp());
}
//main function is automatically executed when the app launches
//run app is a function which does all the heavy lifting behind the scenes,
// to take a widget we created and draw it onto the screen
//it calls the build method on our widget

class MyApp extends StatefulWidget {
  @override
  //create method has no methods but it has  to return a State Object
  //which is connected to a Stateful Widget
  State<StatefulWidget> createState() => _MyAppState();
}

//MyAappState class should only be usable from inside the main.dart file,

// so from inside the file where it's defined, you add a leading underscore in front of the name
// you also have to add that in all the places where you use that name.
// that leading underscore is a special syntax in Dart and it turns this class which normally is a public class, which means it can be used in
// any file which imports the main.dart file, this turns it from a public into a private class and now
// MyAppState is a class that can only be used inside the main.dart file,
class _MyAppState extends State<MyApp> {
  //this is a so called decorator
  //State is a generic type imported from material dart
  //so we need to add pointer <MyApp>
  //this tell dart that this class belongs to MyApp
  var _questionIndex = 0;
  //the leading underscore signifies that this is a private properties
  void _answerQuestion() {
    //SetState is a trigger that informs flutter that it needs to re-run build() of the widget
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // setState is a method that is provided from that State that we created,
    //setState takes a functions, with no arguments, typically anonymous function
  }

  @override

  //every widget in flutter needs to extend stateless or stateful widget
  // and each of those classes wil force you to add a build method
  //because flutter will always call that build method
  Widget build(BuildContext ctx) {
    var questions = [
      "what is your favorite color",
      "what is your favorite animal"
    ];
    //the build method returns the ctx argument of type BuildContext
    //fluuter provides the value for the ctx
    return MaterialApp(
      //in the MyApp widget build method here, we have the MaterialApp we are returning
      //which is in turn a widget provided by the fluter team
      // this uses a named argument 'home' and as a vale for this named argument,
      //I pass another widget Text which is also provided by a flutter team
      //Text widget uses positional argument
      //so both text and hello is an argument,
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => _questionIndex + 1,
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
      //Scaffold is another widget baked into material dart
      //scaffold has the job of creating a base page design for your app
      //gives basic design structure and coloring for UI
      // it has a couple of named argument and you can always hit ctrl space to get some auto completion in the IDE
    );
  }
}
// every widget is just a dart class which in the end has a build method
