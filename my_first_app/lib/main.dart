import 'package:flutter/material.dart';
import 'package:my_first_app/home_app.dart';

void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({super.key}); // the constructure 
 // the title of the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home:  
      HomeApp(
        'Dice Roller App' // the title of the app,
      ),
      );
  }
}