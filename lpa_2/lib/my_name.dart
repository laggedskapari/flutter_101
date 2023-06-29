import 'package:flutter/material.dart';

class MyName extends StatelessWidget {
  const MyName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 16, 16, 16),
      ),
      child: const Center(
        child: Text(
          'Hi! Rajat',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
