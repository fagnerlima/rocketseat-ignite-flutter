import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepperTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const StepperTitleWidget({
    Key? key,
    required this.title,
    required this.subtitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: title,
          style: AppTheme.textStyles.stepperTitle,
          children: [
            TextSpan(
                text: '\n$subtitle',
                style: AppTheme.textStyles.stepperSubtitle
            )
          ]
      ),
      textAlign: TextAlign.center,
    );
  }
}
