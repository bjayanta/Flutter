import 'package:database/db/database_handler.dart';
import 'package:database/models/note.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  final note_id;

  const EditScreen({this.note_id, Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final formKey = GlobalKey<FormState>();

  bool isImportant = false;
  double currentSliderValue = 0.00;
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Note'),
      ),
      body: FutureBuilder(
        future: DatabaseHandler.instance.readNote(widget.note_id),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            this.isImportant = snapshot.data.isImportant;
            this.currentSliderValue = snapshot.data.number.toDouble();
            this.title = snapshot.data.title;
            this.description = snapshot.data.description;

            return Form(
              key: formKey,
              child: ListView(
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
                        onTap: () => setState(
                            () => this.isImportant = !this.isImportant),
                      ),
                    ],
                  ),
                  Slider(
                    value: this.currentSliderValue.toDouble(),
                    max: 10,
                    divisions: 10,
                    label: this.currentSliderValue.round().toString(),
                    onChanged: (value) =>
                        setState(() => this.currentSliderValue = value),
                  ),
                  TextFormField(
                    initialValue: this.title,
                    decoration: InputDecoration(
                      labelText: 'Note Title',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => setState(() => this.title = value),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    initialValue: this.description,
                    minLines: 1,
                    maxLines: 5,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) =>
                        setState(() => this.description = value),
                  ),
                  SizedBox(height: 32.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(MediaQuery.of(context).size.width, 40.00)),
                    onPressed: () async {
                      final data = Note(
                          isImportant: this.isImportant,
                          number: this.currentSliderValue.round(),
                          title: this.title,
                          description: this.description,
                          createdTime: DateTime.now());

                      if (formKey.currentState!.validate()) {
                        try {
                          final note = await DatabaseHandler.instance.update(data);
                        } catch (e) {
                          print(e.toString());
                        }

                        Navigator.of(context).pop();
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Something went wrong.'),
                          ),
                        );
                      }
                    },
                    child: Text('Update the note'),
                  ),
                ],
              ),
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
