import 'package:flutter/material.dart';
import 'dart:math';

class HomeApp extends StatefulWidget {
  const HomeApp(this.title, {super.key});
  final String title;

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  String _imagePath = 'images/dice1.jpg'; 

  void _rollDice() {
    final random = Random().nextInt(6) + 1; 
    setState(() {
      _imagePath = 'images/dice$random.jpg';
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('You rolled a $random!'),
        duration: const Duration(seconds: 2),
        backgroundColor: const Color.fromARGB(255, 74, 3, 59),
      ),
);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: const Icon(Icons.castle_rounded),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(
                context: context,
                barrierColor: const Color.fromARGB(136, 255, 255, 255),
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Settings'),
                    content: const Text('Settings are not available yet.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('About'),
                    content: const Text('A DICE ROLLER APP CUZ MY SIS LOST THE REAL ONE'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 188, 240),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 255, 137, 227),
            ],
            center: Alignment.center,
            radius: 1.7,
            stops: [0.0, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to My First App',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 232, 142, 203),
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.black54,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 80),
              Image.asset(
                _imagePath,
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: _rollDice,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 248, 112, 182),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  foregroundColor: const Color.fromARGB(255, 0, 26, 255)
                ),
                child: const Text(
                  'Roll the Dice',
                  style: TextStyle(fontSize: 20, color: Colors.white , fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black54,
                        offset: Offset(2, 2),
                        blurRadius: 5,
                      ),
                    ],
                ),
              ),
          )],
          ),
        ),
      ),
    );
  }
}
