import 'package:flutter/material.dart';
import 'container_widget.dart';
import 'text_widget.dart';
import 'scaffold_widget.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scaffold Widget",
      // home: Scaffold_Widget(),
      // home: Text_Widget(),
      home: Container_Widget(),
    );
  }
}
