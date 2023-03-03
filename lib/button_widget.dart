import 'package:flutter/material.dart';

class Button_Widget extends StatelessWidget {
  const Button_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Elevated Button"),
              onPressed: () {
                print("I am Elevated Button.");
              },
              onLongPress: () {
                print("I am long press.");
              },
            ),
            TextButton(
              onPressed: () {
                print("Text Button");
              },
              child: Text("Text Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                foregroundColor: Colors.blue
              ),
            ),
            OutlinedButton(onPressed: () {
              print("Outlined button");
            }, child: Text("I am Outlined button."),),
          ],
        ),
      ),
    );
  }
}
