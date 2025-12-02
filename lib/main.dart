import 'package:flutter/material.dart';
import 'package:hardtech/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hard Tech',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF1DB6FF),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Color(0xFF1DB6FF)),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Color(0xFF1DB6FF),
          unselectedItemColor: Colors.white70,
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF1DB6FF),
          secondary: Color(0xFF1DB6FF),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
