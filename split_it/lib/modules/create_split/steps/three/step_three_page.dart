import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepThreePage extends StatefulWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
            title: 'Qual ou quais',
            subtitle: 'você quer dividir?'
        ),
        SizedBox(height: 40,),
        StepInputTextWidget(
          onChanged: (value) {},
          hintText: 'Nome da pessoa',
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
