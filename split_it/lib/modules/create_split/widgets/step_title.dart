import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const StepTitleWidget({
    Key? key,
    required this.title,
    required this.subtitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: title,
          style: AppTheme.textStyles.stepTitle,
          children: [
            TextSpan(
                text: '\n$subtitle',
                style: AppTheme.textStyles.stepSubtitle
            )
          ]
      ),
      textAlign: TextAlign.center,
    );
  }
}
