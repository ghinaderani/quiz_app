import 'package:flutter/material.dart';
import 'package:quiz4/pages/add_question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddQuestion(),
    );
  }
}


