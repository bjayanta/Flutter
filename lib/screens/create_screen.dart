import 'package:database/db/database_handler.dart';
import 'package:database/models/note.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;

  bool isImportant = false;
  double currentSliderValue = 0;
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Note'),
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Row(
              children: [
                Checkbox(
                    value: this.isImportant,
                    onChanged: (value) =>
                        setState(() => this.isImportant = value!)),
                GestureDetector(
                  child: Text('Is Important?'),
                  onTap: () {
                    setState(() => {this.isImportant = !this.isImportant});
                  },
                ),
              ],
            ),
            Slider(
              value: currentSliderValue,
              max: 10,
              divisions: 10,
              label: currentSliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Note Title',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  title = value;
                });
              },
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              minLines: 1,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  description = value;
                });
              },
            ),
            SizedBox(
              height: 32.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width, 40.00)),
              onPressed: () async {
                final data = Note(
                    isImportant: isImportant,
                    number: currentSliderValue.round(),
                    title: title,
                    description: description,
                    createdTime: DateTime.now());

                if (formKey.currentState!.validate()) {
                  // print(data.toJson());

                  try {
                    final note = await DatabaseHandler.instance.create(data);
                    // print(note);
                  } catch (e) {
                    print(e.toString());
                  }

                  Navigator.pushNamed(context, '/allNotes');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Something went wrong.'),
                    ),
                  );
                }
              },
              child: Text('Create a note'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/allNotes');
              },
              child: Text('All Notes'),
            ),
          ],
        ),
      ),
    );
  }
}
