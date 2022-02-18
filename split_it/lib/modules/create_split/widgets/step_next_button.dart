import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepNextButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool disabled;

  const StepNextButtonWidget({
    Key? key,
    required this.label,
    this.onTap,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: !disabled ? onTap : null,
        child: Text(
          label,
          style: !disabled
            ? AppTheme.textStyles.stepNextButton
            : AppTheme.textStyles.stepNextButtonDisabled,
        )
      ),
    );
  }
}
