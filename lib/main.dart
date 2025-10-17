
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicalapp/screens/splishscreen/splish_screen.dart';

void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplishScreen(),
      ),
    );
  }
}