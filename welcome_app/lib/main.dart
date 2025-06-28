import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; // Required for kReleaseMode

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, // Enable only in debug mode
      builder: (context) => const MyApp(),
    ),
  );
}

void onPress() {
  // Add your button press logic here
  print("Button Pressed");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromARGB(255, 237, 223, 223),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const SizedBox(height: 30),
              Image.asset(
                'images/logo.png',
                fit: BoxFit.fitWidth,
                width: 70,
              ),
              const SizedBox(height: 10),
              const Text(
                'Company\'s name',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 55),
              Image.asset(
                'images/welcome.png',
                width: 500,
                height: 140,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 15),
              const Text(
                'Let\'s Find Your \n Dream House !',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Ready to start fresh in a new location? Propyrite \n is here to guide you on your journey!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 30),

              // Google Sign-In Button
              ElevatedButton.icon(
                onPressed: onPress,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF8707),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: const Icon(Icons.g_translate, color: Colors.white),
                label: const Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Email Sign-In Button
              ElevatedButton.icon(
                onPressed: onPress,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0783FF),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: const Icon(Icons.email, color: Colors.white),
                label: const Text(
                  'Sign in with Email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Divider with text
              Row(
                children: [
                  const Expanded(
                    child: Divider(color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'or continue to',
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ),
                  const Expanded(
                    child: Divider(color: Colors.grey),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Login to your account
              ElevatedButton(
                onPressed: onPress,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 166, 211, 255),
                  foregroundColor: const Color.fromARGB(255, 0, 94, 170),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 13, 68, 93),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
