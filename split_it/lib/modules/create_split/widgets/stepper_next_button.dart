import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepperNextButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const StepperNextButtonWidget({
    Key? key,
    required this.label,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onTap,
        child: Text(
          label,
          style: AppTheme.textStyles.stepperNextButton,
        )
      ),
    );
  }
}
