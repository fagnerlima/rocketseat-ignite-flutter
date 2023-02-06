import 'package:flutter/material.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/theme/app_theme.dart';

class StepFourPage extends StatelessWidget {
  final EventModel event;

  const StepFourPage({
    Key? key,
    required this.event
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundSecondary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/money.png')
            ],
          ),
          Text('${event.friends.length} pessoas'),
          Text('${event.splitedValue}'),
          Text('para cada um'),
          Row(children: event.friends.map((e) => Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: NetworkImage(e.photoURL))
            ),
          )).toList(),)
        ],
      ),
    );
  }
}
