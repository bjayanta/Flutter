import 'package:flutter/material.dart';

class Container_Widget extends StatelessWidget {
  const Container_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 200.0,
        height: 200.0,
        margin: EdgeInsets.all(25.0),
        decoration: BoxDecoration(
          color: Colors.amber,
          border: Border.all(
            color: Colors.black,
            width: 5.0,
          ),
          // borderRadius: BorderRadius.circular(16.0),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(100),
            bottomRight: Radius.circular(100),
          ),
        ),
      ),
    );
  }
}
