import 'package:database/db/database_handler.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  final note_id;

  const EditScreen({this.note_id, Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  Future? note;
  bool isImportant = false;
  double currentSliderValue = 0.00;

  @override
  void initState() {
    super.initState();
    getNoteById();
  }

  Future getNoteById() async {
    note = (await DatabaseHandler.instance.readNote(widget.note_id)) as Future?;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Note'),
      ),
      body: FutureBuilder(
        future: note,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            // final note = snapshot.data;

            // setState(() => {
            //   this.isImportant = note.isImportant
            // });

            return ListView(
              padding: EdgeInsets.all(16.0),
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: this.isImportant,
                      onChanged: (value) =>
                          setState(() => this.isImportant = value!),
                    ),
                    GestureDetector(
                      child: Text('Is important?'),
                      onTap: () => setState(() => this.isImportant = !this.isImportant),
                    ),
                  ],
                ),
                Slider(
                  value: this.currentSliderValue.toDouble(),
                  max: 10,
                  divisions: 10,
                  label: note.number.round().toString(),
                  onChanged: (value) => setState(() => this.currentSliderValue = value),
                ),
              ],
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
