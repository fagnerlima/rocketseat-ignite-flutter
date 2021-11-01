import 'package:flutter/material.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/widgets/app_bar/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model/user.dart';
import 'package:split_it/shared/models/event.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getEvents();
    controller.listen((state) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      appBar: AppBarWidget(
        user: user,
        onTapAddButton: () {
          Navigator.pushNamed(context, '/create_split');
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (controller.state is HomeStateLoading)
                ...List.generate(4, (index) => EventTileWidget(
                  data: Event(),
                  isLoading: true,
                ))
              else if (controller.state is HomeStateSuccess)
                ...(controller.state as HomeStateSuccess).events
                  .map((event) => EventTileWidget(data: event))
                  .toList()
              else if (controller.state is HomeStateFailure)
                Text((controller.state as HomeStateFailure).message)
            ],
          ),
        ),
      ),
    );
  }
}
