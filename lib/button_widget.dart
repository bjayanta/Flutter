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
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 100),
                elevation: 20.0,
                alignment: Alignment(-1, 0),
                textStyle: TextStyle(fontSize: 22.0),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            TextButton(
              onPressed: () {
                print("Text Button");
              },
              child: Text("Text Button"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.blue),
            ),
            SizedBox(
              height: 24.0,
            ),
            OutlinedButton(
              onPressed: () {
                print("Outlined button");
              },
              child: Text("I am Outlined button."),
            ),
          ],
        ),
      ),
    );
  }
}
