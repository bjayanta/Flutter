import 'package:flutter/material.dart';

class Dialogbox_Widget extends StatelessWidget {
  const Dialogbox_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Click me"),
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text("Dialog box"),
                content: Text("Dialog box description."),
                actions: [
                  TextButton(onPressed: () {}, child: Text("Cancle")),
                  TextButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: Text("Ok"),),
                ],
              );
            });
          },
        ),
      ),
    );
  }
}
