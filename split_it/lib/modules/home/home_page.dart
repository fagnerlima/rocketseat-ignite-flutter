import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model/user.dart';
import 'package:split_it/shared/models/event.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Event> events = [
    Event(
      title: 'Churrasco',
      created: DateTime.now(),
      value: 90,
      people: 2,
    ),
    Event(
      title: 'Churrasco',
      created: DateTime.now(),
      value: 90,
      people: 2,
    ),
    Event(
      title: 'Churrasco',
      created: DateTime.now(),
      value: -80,
      people: 1,
    ),
    Event(
      title: 'Churrasco',
      created: DateTime.now(),
      value: 90,
      people: 2,
    ),
    Event(
      title: 'Churrasco',
      created: DateTime.now(),
      value: -80,
      people: 1,
    ),
    Event(
      title: 'Churrasco',
      created: DateTime.now(),
      value: 90,
      people: 2,
    ),
    Event(
      title: 'Churrasco',
      created: DateTime.now(),
      value: -80,
      people: 1,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () => print('onTapAddButton'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...events
                  .map((event) => EventTileWidget(data: event))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
