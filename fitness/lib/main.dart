import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'my first app',
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('my first app'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 193, 255),
        ),
        body: Center(child: const Text('i love samia!')),
        backgroundColor: const Color.fromARGB(255, 255, 119, 176),
      ),
    );
  }
}
