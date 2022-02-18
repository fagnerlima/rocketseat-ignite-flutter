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
            subtitle: 'itens você quer dividir?'
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 24),
                child: Text('1'),
              ),
              Expanded(
                flex: 4,
                child: StepInputTextWidget(
                  onChanged: (value) {},
                  hintText: 'Ex: Picanha',
                  textAlign: TextAlign.start,
                  padding: EdgeInsets.zero,
                ),
              ),
              Expanded(
                flex: 2,
                child: StepInputTextWidget(
                  onChanged: (value) {},
                  hintText: 'R\$ 0,00',
                  textAlign: TextAlign.start,
                  padding: EdgeInsets.zero,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete)
              )
            ],
          ),
        ),
      ],
    );
  }
}
