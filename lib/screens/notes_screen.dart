import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../db/database_handler.dart';
import 'package:database/models/note.dart';

import '/screens/details_screen.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Notes'),
      ),
      body: FutureBuilder(
        future: DatabaseHandler.instance.readAllNotes(),
        builder: (BuildContext context, AsyncSnapshot<List<Note>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final note = snapshot.data?[index];
                final datetime = DateFormat('E, dd MMMM, yy hh:mm a')
                    .format(note!.createdTime)
                    .toString();

                return ListTile(
                  title: Text('${note.id} - ${note.title}'),
                  subtitle: Text('${datetime}'),
                  onTap: () {
                    // Navigator.of(context).pushNamed('/notesDetails', arguments: {'note_id': note.id});

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return DetailsScreen(note_id: note.id);
                        },
                      ),
                    );
                    // print(note.id);
                  },
                );
              },
            );
          } else {
            return Center(
              child: Text("Something went wrong!"),
            );
          }
        },
      ),
    );
  }
}
