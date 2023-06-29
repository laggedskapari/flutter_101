import 'package:flutter/material.dart';
import 'package:lpa_2/custom_text.dart';

class MyName extends StatelessWidget {
  const MyName({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 16, 16, 16),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
