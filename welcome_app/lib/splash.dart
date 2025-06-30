import 'package:flutter/material.dart';

import 'package:welcome_app/signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait 3 seconds then navigate to sign-in
Future.delayed(const Duration(seconds: 3), () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const SignInPage()),
  );
});

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 195, 225, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/spalsh.png', width: 400, height: 400),            
            
            const SizedBox(height: 20),
            const CircularProgressIndicator(color: Color.fromARGB(255, 176, 204, 255)),
            const SizedBox(height: 10),
            const Text(
              "Loading...",
              style: TextStyle(
                  fontSize: 18, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}    


