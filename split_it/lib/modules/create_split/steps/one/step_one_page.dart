import 'package:flutter/material.dart';

class StepOnePage extends StatefulWidget {
  const StepOnePage({Key? key}) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Qual o nome do evento?'),
        TextField()
      ],
    );
  }
}
