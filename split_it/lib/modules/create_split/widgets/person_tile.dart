import 'package:flutter/material.dart';

class PersonTileWidget extends StatelessWidget {
  final String name;
  final bool isRemoved;

  const PersonTileWidget({
    Key? key,
    required this.name,
    this.isRemoved = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        color: Colors.grey[200],
        width: 40,
        height: 40,
      ),
      title: Text(name),
      trailing: IconButton(
        icon: Icon(isRemoved ? Icons.remove : Icons.add),
        onPressed: () {},
      ),
    );
  }
}
