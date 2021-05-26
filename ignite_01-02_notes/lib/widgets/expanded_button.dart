import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  ExpandedButton({
    required this.label,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
              onPressed: onPressed,
              child: Text(label)
          ),
        ),
      ],
    );
  }
}
