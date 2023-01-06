import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homestay_raya/views/mainscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text(
            "Homestay Raya",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 80, width: 80, child: CircularProgressIndicator()),
          Text("Version 0.1b")
        ]),
      ),
    );
  }
}
