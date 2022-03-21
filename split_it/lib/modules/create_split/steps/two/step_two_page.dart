import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_controller.dart';
import 'package:split_it/modules/create_split/widgets/person_tile.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepTwoPage extends StatefulWidget {
  const StepTwoPage({Key? key}) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  final controller = StepTwoController();

  @override
  void initState() {
    controller.getFriends();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StepTitleWidget(
          title: 'Com quem',
          subtitle: 'você quer dividir?'
        ),
        SizedBox(height: 40,),
        StepInputTextWidget(
          onChanged: (value) => controller.findFriends(value),
          hintText: 'Nome da pessoa',
        ),
        SizedBox(height: 35,),
        Observer(builder: (context) {
          if (controller.friends.isEmpty) {
            return Text('Nenhum amigo encontrado');
          }

          return Column(
            children: controller.friends
                .map((f) => PersonTileWidget(name: f.name))
                .toList(),
          );
        },),
      ],
    );
  }
}
