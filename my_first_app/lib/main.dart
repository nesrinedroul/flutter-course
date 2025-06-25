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
        primarySwatch: Colors.purple, // the primary color of the app
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20, // the font size of the text
            color: Colors.white, // the color of the text
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home:  
      HomeApp(
        'Dice Roller App' // the title of the app,
      ),
      );
  }
}