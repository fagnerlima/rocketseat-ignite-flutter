import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/steps/two/step_two_controller.dart';
import 'package:split_it/modules/create_split/widgets/person_tile.dart';
import 'package:split_it/modules/create_split/widgets/step_input_text.dart';
import 'package:split_it/modules/create_split/widgets/step_title.dart';

class StepTwoPage extends StatefulWidget {
  final CreateSplitController controller;

  const StepTwoPage({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  _StepTwoPageState createState() => _StepTwoPageState();
}

class _StepTwoPageState extends State<StepTwoPage> {
  late StepTwoController controller;

  @override
  void initState() {
    controller = StepTwoController(controller: widget.controller);
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
          if (controller.selectedFriends.isEmpty) {
            return Container();
          }

          return Column(
            children: [
              ...controller.selectedFriends
                .map((f) => PersonTileWidget(
                  data: f,
                  isRemoved: true,
                  onPressed: () => controller.removeFriend(f),
                ))
                .toList(),
              SizedBox(height: 16,),
            ],
          );
        },),
        Observer(builder: (context) {
          if (controller.friends.isEmpty) {
            return Text('Nenhum amigo encontrado');
          }

          return Column(
            children: controller.friends
                .map((f) => PersonTileWidget(
                  data: f,
                  onPressed: () => controller.addFriend(f),
                ))
                .toList(),
          );
        },),
      ],
    );
  }
}
