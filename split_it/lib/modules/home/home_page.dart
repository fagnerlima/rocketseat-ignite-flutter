import 'package:flutter/material.dart';
import 'package:split_it/modules/home/home_controller.dart';
import 'package:split_it/modules/home/home_state.dart';
import 'package:split_it/modules/home/widgets/app_bar_widget.dart';
import 'package:split_it/modules/home/widgets/event_tile_widget.dart';
import 'package:split_it/modules/login/models/user_model/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    controller.getEvents(() => setState);
    super.initState();
  }

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
              if (controller.state is HomeStateLoading)
                CircularProgressIndicator()
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
