import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/stepper_title.dart';

class StepTwoPage extends StatefulWidget {
  const StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepperTitleWidget(
          title: 'Com quem',
          subtitle: 'você quer dividir?'
        )
      ],
    );
  }
}
