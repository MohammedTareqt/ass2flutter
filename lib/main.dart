import 'package:ass3flutter/views/screens/responsive/large.dart';
import 'package:ass3flutter/views/screens/responsive/small.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: Responsive()));
}

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 420 ? Large() : Small();
  }
}
