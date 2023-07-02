import 'package:flutter/material.dart';
import 'package:lpa_2/custom_text.dart';

class MyName extends StatelessWidget {
  const MyName(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
      ),
      child: const Center(
        child: StyledText(),
      ),
    );
  }
}
