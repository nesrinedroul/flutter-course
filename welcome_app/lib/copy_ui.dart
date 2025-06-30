import 'package:flutter/material.dart';
import 'package:welcome_app/uiapp.dart';

void main() {
  runApp(const LoginPage());
}

void onPress() {
  // Add your button press logic here
  print("Button Pressed");
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                const SizedBox(height: 10),
                const Text(
                  'Company\'s name',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 55),
                Image.asset(
                  'images/welcome.png',
                  // Adjust the image path as necessary
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
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Ready to start fresh in a new location? Propyrite \n is here to guide you on your journey!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Color.fromARGB(255, 68, 68, 68),
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton.icon(
                  onPressed: onPress,
                  icon: const Text('G',  
                  style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white)),
                  label: const Text('Sign in with Google'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF8707),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: onPress,
                  icon: const Icon(Icons.email),
                  label: const Text('Sign in with Email'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0783FF),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                    textStyle: const TextStyle(fontSize: 18,
                    fontWeight: FontWeight.w500),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
const SizedBox(height: 20),
              Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade400)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'or continue to',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey.shade400)),
      ],
    ),
    SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomePage(),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(213, 234, 255, 1),
                    foregroundColor: const Color.fromARGB(255, 0, 94, 170),
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 14),
                    textStyle: const TextStyle(fontSize: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Login to your account'),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
