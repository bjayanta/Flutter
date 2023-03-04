import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Icon_Widget extends StatelessWidget {
  const Icon_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.camera,
              color: Colors.amber,
              size: 100.0,
            ),
            Icon(
              FontAwesomeIcons.dashcube,
              color: Colors.redAccent,
              size: 100.0,
            ),
          ],
        ),
      ),
    );
  }
}
