import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/modules/create_split/widgets/step_next_button.dart';
import 'package:split_it/theme/app_theme.dart';

class BottomStepperBarWidget extends StatelessWidget {
  final VoidCallback onTapCancel;
  final CreateSplitController controller;

  const BottomStepperBarWidget({
    Key? key,
    required this.onTapCancel,
    required this.controller,
  }) : super(key: key);

  void onTapNext() {
    if (!controller.isLastPage) {
      controller.nextPage();
      return;
    }

    controller.saveEvent();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Column(
        children: [
          Row(
            children: [
              Observer(builder: (_) => StepNextButtonWidget(
                label: 'Cancelar',
                onTap: onTapCancel,
                disabled: !controller.enabledNavigateButton,
              )),
              Container(
                width: 1,
                height: 60,
                color: AppTheme.colors.divider,
              ),
              Observer(builder: (_) => StepNextButtonWidget(
                label: !controller.isLastPage ? 'Continuar' : 'Finalizar',
                onTap: onTapNext,
                disabled: !controller.enabledNavigateButton,
              )),
            ],
          ),
        ],
      ),
    );
  }
}
