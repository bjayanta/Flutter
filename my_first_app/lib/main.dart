import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(FahimApp());
}

class FahimApp extends StatelessWidget {
  const FahimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First App",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Text("My name is Fahim."),
      ),
    );
  }
}
