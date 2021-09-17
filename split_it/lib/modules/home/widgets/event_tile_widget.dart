import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';

class EventTileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final double value;
  final int people;

  const EventTileWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.people
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconDollarWidget(type: IconDollarType.income),
        Expanded(
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('R\$ $value'),
                SizedBox(height: 5,),
                Text('$people amigo(s)'),
              ],
            ),
          )
        )
      ],
    );
  }
}
