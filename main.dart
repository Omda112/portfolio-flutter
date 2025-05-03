import 'package:flutter/material.dart';
import 'package:flutter_first_project/screen/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: const MyHomePage(),
    );
  }
}
