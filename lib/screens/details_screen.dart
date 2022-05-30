import 'package:database/db/database_handler.dart';
import 'package:database/screens/edit_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/note.dart';

class DetailsScreen extends StatefulWidget {
  final note_id;
  const DetailsScreen({this.note_id, Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note details'),
      ),
      body: FutureBuilder(
        future: DatabaseHandler.instance.readNote(widget.note_id),
        builder: (BuildContext cotext, AsyncSnapshot<Note> snapshot) {
          if (snapshot.hasData) {
            final datetime = DateFormat('E, dd MMMM, yy hh:mm a')
                .format(snapshot.data!.createdTime)
                .toString();

            return Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${snapshot.data?.title} (${snapshot.data!.id})',
                      style: TextStyle(
                          fontSize: 28.0, fontWeight: FontWeight.bold)),
                  Text('${snapshot.data?.description}'),
                  SizedBox(height: 16.0),
                  Text('Created at',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('$datetime'),
                  SizedBox(height: 16.0),
                  Text('Number', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('${snapshot.data?.number}'),
                  SizedBox(height: 16.0),
                  Text('Is Impornent?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                    '${snapshot.data!.isImportant ? 'YES' : 'NO'}',
                  ),
                  SizedBox(height: 32.0),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Back'),
                      ),
                      SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return EditScreen(note_id: widget.note_id,);
                            })
                          );
                        },
                        child: Text('Edit'),
                      ),
                      SizedBox(width: 16.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/allNotes');
                        },
                        child: Text('Delete'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            return Text('${snapshot.error}');
          }
        },
      ),
    );
  }
}
