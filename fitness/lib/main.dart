import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                  Fluttertoast.showToast(
                    msg: "Search button pressed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 193, 255),
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                subtitle: const Text('Go to home'),
                onTap: () {
                  // Handle home tap
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  // Handle settings tap
                },
              ),
            ],
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: [
            Container(
              decoration: BoxDecoration(
          color: const Color.fromARGB(255, 111, 0, 111),
          borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Center(
          child: Text(
            'Hello, Nesri!',
            style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 255, 150, 206)),
          ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
          color: const Color.fromARGB(255, 222, 19, 87),
          borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
          child: Text(
            'Hello, Nesri!',
            style: TextStyle(fontSize: 24, color: Colors.pink[900]),
          ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 107, 157),
          borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
          child: Text(
            'Hello, Nesri!',
            style: TextStyle(fontSize: 24, color: Colors.pink[900]),
          ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 198, 217),
          borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
          child: Text(
            'Hello, Nesri!',
            style: TextStyle(fontSize: 24, color: Colors.pink[900]),
          ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 98, 150),
          borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
          child: Text(
            'Hello, Nesri!',
            style: TextStyle(fontSize: 24, color: Colors.pink[900]),
          ),
              ),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 255, 226, 226),
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
              backgroundColor: const Color.fromARGB(255, 248, 186, 248),
            selectedFontSize: 16.0,
            selectedItemColor: const Color.fromARGB(255, 66, 0, 57),
          ),
        ),
      );
  }
}
