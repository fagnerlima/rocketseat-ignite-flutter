import 'package:flutter/material.dart';
import 'package:notes/widgets/note_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes = [
    'Item 0'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTES'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var i = 0; i < notes.length; i++)
              NoteCard(
                value: notes[i],
                onTap: () => _editNote(i),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _createNote,
      ),
    );
  }

  void _editNote(int index) async {
    final response = await Navigator.pushNamed(context,
        '/create-note', arguments: notes[index]);

    if (response == null) {
      return;
    }

    var note = response as String;

    setState(() {
      if (note.isNotEmpty) {
        notes[index] = note;
      } else {
        notes.removeAt(index);
      }
    });
  }

  void _createNote() async {
    final response = await Navigator.pushNamed(context, '/create-note');

    if (response == null) {
      return;
    }

    var note = response as String;
    setState(() => notes.add(note));
  }
}
