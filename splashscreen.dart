import 'dart:async';

import 'package:flutter/material.dart';
import 'loginscreen.dart';
import 'registrationscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (content) => const RegistrationScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text("HOMESTAY RAYA",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30, width: 30, child: CircularProgressIndicator()),
            Text("Version 1.0")
          ]),
    ));
  }
}
