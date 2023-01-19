import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepOnePage extends StatefulWidget {
  final CreateSplitController controller;

  const StepOnePage({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: 'Qual o nome',
          subtitle: 'do evento?'
        ),
        SizedBox(height: 40,),
        StepInputTextWidget(
          onChanged: (value) => widget.controller.onChanged(name: value),
          hintText: 'Ex: Churrasco',
        )
      ],
    );
  }
}
