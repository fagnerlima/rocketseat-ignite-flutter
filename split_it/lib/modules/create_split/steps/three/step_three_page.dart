import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/steps/three/step_three_controller.dart';
import 'package:split_it/modules/create_split/widgets/add_text_button.dart';
import 'package:split_it/modules/create_split/widgets/step_multi_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepThreePage extends StatefulWidget {
  const StepThreePage({Key? key}) : super(key: key);

  @override
  _StepThreePageState createState() => _StepThreePageState();
}

class _StepThreePageState extends State<StepThreePage> {
  final controller = StepThreeController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
            title: 'Qual ou quais',
            subtitle: 'itens você quer dividir?'
        ),
        Observer(builder: (_) => StepMultiInputText(
          count: controller.currentIndex + 1,
          itemName: (value) => controller.onChanged(name: value),
          itemValue: (value) => controller.onChanged(value: value),
        )),
        Observer(builder: (_) => Column(
          children: [
            for (var i = 0; i < controller.items.length; i++)
              StepMultiInputText(
                count: i + 1,
                initialName: controller.items[i].name,
                initialValue: controller.items[i].value,
                itemName: (value) {},
                itemValue: (value) {},
              )
          ],
        )),
        SizedBox(height: 24,),
        Observer(builder: (_) => controller.showButton
          ? AddTextButton(
              label: 'Continuar',
              onPressed: () => controller.addItem()
            )
          : Container()
        )
      ],
    );
  }
}
