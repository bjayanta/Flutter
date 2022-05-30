import 'package:flutter/material.dart';

import '/screens/details_screen.dart';
import '/screens/create_screen.dart';
import '/screens/notes_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => CreateScreen(),
        '/allNotes': (context) => NotesScreen(),
        '/notesDetails': (context) => DetailsScreen(),
      },
    );
  }
}
