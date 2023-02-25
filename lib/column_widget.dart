import 'package:flutter/material.dart';

class Column_Widget extends StatelessWidget {
  const Column_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellowAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(Icons.menu),
            Icon(Icons.settings, size: 100.0),
            Icon(Icons.abc),
          ],
        ),
      ),
    );
  }
}
