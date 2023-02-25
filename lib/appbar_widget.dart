import 'package:flutter/material.dart';

class Appbar_Widget extends StatelessWidget {
  const Appbar_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Appbar Widget"),
        backgroundColor: Colors.amber,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => {},
        ),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () => {}, icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}

// AppBar(
//   centerTitle: true,
//   title: Text("A P P B A R"),
//   backgroundColor: Colors.amber,
//   elevation: 0,
//   leading: IconButton(
//     icon: Icon(Icons.menu),
//     onPressed: () {},
//   ),
//   actions: [
//     IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
//     IconButton(onPressed: () {}, icon: Icon(Icons.person)),
//   ],
// )