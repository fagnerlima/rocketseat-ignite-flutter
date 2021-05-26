import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final String value;
  final GestureTapCallback? onTap;

  NoteCard({
    required this.value,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(value),
        onTap: onTap
      ),
    );
  }
}
