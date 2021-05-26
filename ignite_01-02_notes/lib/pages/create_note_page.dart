import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes/widgets/expanded_button.dart';

class CreateNotePage extends StatefulWidget {
  @override
  _CreateNotePageState createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var description = '';
  var descriptionController = TextEditingController();
  var isEdit = false;

  @override
  void initState() {
    // Possibilita utilizar o context em initState
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      var routeArguments = ModalRoute.of(context)!.settings.arguments;

      if (routeArguments != null) {
        description = routeArguments as String;
        setState(() {
          descriptionController.text = description;
          isEdit = true;
        });
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${isEdit ? 'Edit' : 'Create'} Note'),
        centerTitle: true,
        actions: [
          if (isEdit)
            IconButton(
                onPressed: _deleteNote,
                icon: Icon(Icons.delete)
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: descriptionController,
              maxLines: null,
              maxLength: 255,
              decoration: InputDecoration(labelText: 'Description'),
              onChanged: (value) => setState(() => description = value),
            ),
            SizedBox(height: 32),
            if (description.isNotEmpty)
              ExpandedButton(
                label: 'Save',
                onPressed: _saveNote,
              )
          ],
        ),
      ),
    );
  }

  void _saveNote() {
    Navigator.pop(context, description);
  }

  void _deleteNote() {
    Navigator.pop(context, '');
  }
}
