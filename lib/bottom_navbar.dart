import 'package:flutter/material.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.amber,
        unselectedFontSize: 18.0,
        iconSize: 50,
        selectedFontSize: 22.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackbarMessage('This is menu $index', context);
          }

          if (index == 1) {
            MySnackbarMessage('Message ($index)', context);
          }

          if (index == 2) {
            MySnackbarMessage('Profile ($index)', context);
          }

          if (index == 3) {
            MySnackbarMessage('Settings ($index)', context);
          }
        },
      ),
    );
  }

  MySnackbarMessage(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message.toString()),
      action: SnackBarAction(
        label: "Done",
        onPressed: () {},
      ),
    ));
  }
}
