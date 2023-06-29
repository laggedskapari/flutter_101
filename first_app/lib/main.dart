import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color.fromARGB(255, 154, 95, 255),
                Color.fromARGB(255, 28, 255, 255)
              ],
            ),
          ),
          child: const Center(
            child: Text(
              'Hi! Rajat.',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ),
  );
}
