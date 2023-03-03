import 'package:flutter/material.dart';

class Custom_Dialog_Widget extends StatelessWidget {
  const Custom_Dialog_Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Click me"),
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return Dialog(
                child: SizedBox(
                  height: 300.0,
                  child: Column(
                    children: [
                      Text("Custom Dialog Box"),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            },
                          child: Text("Ok"),
                      ),
                    ],
                  ),
                ),
              );
            });
          },
        ),
      ),
    );
  }
}
