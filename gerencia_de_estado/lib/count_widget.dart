import 'package:flutter/material.dart';
import 'package:gerencia_de_estado/home_controller.dart';

class CountWidget extends StatefulWidget {
  final HomeController controller;

  const CountWidget({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  @override
  void initState() {
    super.initState();
    widget.controller.listen((state) {setState(() {});});
  }

  @override
  Widget build(BuildContext context) {
    print('CountWidget');
    return Text(
      '${widget.controller.state}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
