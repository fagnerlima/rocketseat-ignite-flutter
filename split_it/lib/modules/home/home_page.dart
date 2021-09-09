import 'package:flutter/material.dart';
import 'package:split_it/modules/login/models/user_model/user.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User user = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(
        title: Text(user.name!),
      ),
    );
  }
}
