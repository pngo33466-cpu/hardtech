import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hardtech/screens/home_screen.dart';

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
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => const HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A), // Dark background
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF00BFFF).withAlpha(51),
                  border: Border.all(
                    color: const Color(0xFF00BFFF),
                    width: 3,
                  ),
                ),
                child: const Icon(
                  Icons.memory,
                  size: 60,
                  color: Color(0xFF00BFFF),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Hard Tech',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00BFFF), // Brighter blue for better contrast
                ),
              ),
              const SizedBox(height: 20),
              const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF00BFFF)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
