import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/widgets/stepper_next_button.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onTapCancel;
  final VoidCallback onTapNext;
  final bool enabledButtons;

  const BottomStepperBarWidget({
    Key? key,
    required this.onTapCancel,
    required this.onTapNext,
    this.enabledButtons = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: [
          Row(
            children: [
              StepperNextButtonWidget(
                label: 'Cancelar',
                onTap: enabledButtons ? onTapCancel : null
              ),
              Container(
                width: 1,
                height: 60,
                color: AppTheme.colors.divider,
              ),
              StepperNextButtonWidget(
                label: 'Continuar',
                onTap: enabledButtons ? onTapNext : null
              )
            ],
          ),
        ],
      ),
    );
  }
}
