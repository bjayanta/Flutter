import 'package:flutter/material.dart';

class Text_Widget extends StatelessWidget {
  const Text_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Text Widget",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Text.rich(
            TextSpan(
              text: "Hello",
              children: [
                TextSpan(text: " b", style: TextStyle(fontSize: 36.0)),
                TextSpan(
                    text: "eautiful ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: "World!")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
