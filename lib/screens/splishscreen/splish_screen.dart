import 'dart:async';
import 'package:flutter/material.dart';
import 'package:medicalapp/screens/walkthrough/walkthrough.dart';

class SplishScreen extends StatefulWidget {
  const SplishScreen({super.key});

  @override
  State<SplishScreen> createState() => _SplishScreenState();
}

class _SplishScreenState extends State<SplishScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Walkthrough()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 0, 122, 221),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(
        
           width: 200,
           height: 100,
            child: CircleAvatar(child: Image(image:AssetImage('assets/images/Vector.png')))),
          Center(
            child: Text(
              "Quick Medical",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
