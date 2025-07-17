import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}
void x(int index) {
  // Handle navigation
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
          leading: const Icon(Icons.mood),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
             IconButton(
              icon: const Icon(Icons.save_alt_rounded),
              onPressed: () {
                // Handle save action
              },
            ),
             IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Handle search action
              },
            ),
          ],
          title: const Text('my first app'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 255, 193, 255),
        ),
        body: Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 66, 0, 57)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 255, 119, 176),
              ),
              child: const Text('Press Me'),
            ),
             const Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 66, 0, 57)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 255, 119, 176),
              ),
              child: const Text('Press Me'),
            ),
          ],
        )),

        backgroundColor: const Color.fromARGB(255, 255, 180, 211),
          bottomNavigationBar: BottomNavigationBar(
            onTap: x,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              )],
              backgroundColor: const Color.fromARGB(255, 255, 193, 255),
            selectedFontSize: 16.0,
            selectedItemColor: const Color.fromARGB(255, 66, 0, 57),
          ),
        ),
      );
  }
}
