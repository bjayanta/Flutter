import 'package:flutter/material.dart';

class Row_Widget extends StatelessWidget {
  const Row_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellowAccent,
        child: Row(
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
