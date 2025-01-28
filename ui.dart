import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF030303), // 0%: #030303 with full opacity
                Color.fromRGBO(
                    99, 48, 129, 0.5), // 44%: #633081 with 50% opacity
                Color(0xFF030303), // 100%: #030303 with full opacity
              ],
              stops: [0.0, 0.44, 1.0], // Define the stops for the gradient
            ),
          ),
        ),
      ),
    );
  }
}
