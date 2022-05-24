import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/add_text_button.dart';
import 'package:split_it/modules/create_split/widgets/step_multi_input_text.dart';
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
            subtitle: 'itens você quer dividir?'
        ),
        SizedBox(height: 40,),
        StepMultiInputText(
          count: 1,
          itemName: (value) {},
          itemValue: (value) {},
        ),
        SizedBox(height: 24,),
        AddTextButton(
          label: 'Continuar',
          onPressed: () {}
        )
      ],
    );
  }
}
