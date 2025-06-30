
import 'package:flutter/material.dart';
import 'package:welcome_app/signup.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: true,
     backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text(
          'Medical consultation',
          style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.w600,
          ),
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
      body: SafeArea(
        child: SizedBox(
        width: double.infinity,
        height: double.infinity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            reverse: true, // Optional: keeps last part visible on keyboard
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const SizedBox(height: 10),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'images/chatbotimg.jpg',
                width: 250,
                height: 250,
                fit: BoxFit.fitHeight,
              ),

              const Text(
                'Welcome Back !',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle sign in
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 32, 85),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 84, vertical: 12),
                ),
                child: const Text('Login', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              // prevents keyboard overlap
               const SizedBox(height: 10),
               Row(children: [
                const Expanded(
                  child: Divider(color: Colors.grey),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      height: 1.5,
                    ),
                  ),
                ),
                const Expanded(
                  child: Divider(color: Colors.grey),
                ),
               ],),
              const SizedBox(height: 10),
              ElevatedButton(
                   onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  foregroundColor:  const Color.fromARGB(255, 0, 32, 85),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 84, vertical: 12),
                  side: const BorderSide(
                    color: Color.fromARGB(255, 0, 32, 85),
                    width: 2,
                  ),
                ),
                child: const Text('Sign Up', 
                  style: TextStyle(
                    color:  Color.fromARGB(255, 0, 32, 85),
                    fontSize: 18,
                  ),
              ),),
              const SizedBox(height:60),
            ], 
          ),
        ),
      ),
    ),);
  }
}