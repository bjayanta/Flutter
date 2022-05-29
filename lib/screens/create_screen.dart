import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final formKey = GlobalKey<FormState>();

  bool isImportant = false;
  double currentSliderValue = 0;
  String title = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Create Note'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                Checkbox(value: this.isImportant, onChanged: (value) => setState(() => this.isImportant = value!)),
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
              SizedBox(height: 16.0,),
              TextFormField(
                minLines: 1,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
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

            ],
          ),
        ),
      ),
    );
  }
}
