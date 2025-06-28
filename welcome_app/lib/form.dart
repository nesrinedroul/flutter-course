import 'package:flutter/material.dart';
void main() {
  runApp(const FormApp());
}
class FormApp extends StatelessWidget {
  const FormApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Medical conasultation',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w600)
          ),
          backgroundColor: const Color.fromARGB(255, 148, 202, 255),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                // Handle more options
              },
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text ('Sign in',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,),
            ),
              const SizedBox(height: 20),
              Image.asset(
                'images/chatbotimg.jpg', // Adjust the image path as necessary
                width: 250,
                height: 250,
                fit: BoxFit.fitHeight,
              ),
              const Text(
                'Welcome Back !',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
              
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Handle sign in
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 32, 85), // Button color
                  foregroundColor: Colors.white, // Text color
                  padding: const EdgeInsets.symmetric(horizontal: 84, vertical: 22),
                ),
                 child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}