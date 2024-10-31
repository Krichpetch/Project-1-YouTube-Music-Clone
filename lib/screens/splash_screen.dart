import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to the main app after a delay
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacementNamed('/home'); // Update '/home' to your home route
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
            height: 125,
            width: 125,
            child: Image.asset('assets/icons/YT_Music.png')),
      ),
    );
  }
}
