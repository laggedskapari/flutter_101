import 'package:flutter/material.dart';
import 'my_name.dart';

void main() {
  List<Color> colorList = [ Colors.amber, Colors.black87];
  runApp(
     MaterialApp(
      home: Scaffold(
        body: MyName(colorList),
      )
    ),
  );
}
