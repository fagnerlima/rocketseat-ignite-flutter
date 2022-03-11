import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onTapBack;
  final CreateSplitController controller;
  final int size;

  CreateSplitAppBarWidget({
    required this.onTapBack,
    required this.controller,
    required this.size
  }) : super(
    child: SafeArea(
      top: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppTheme.colors.backButton,
              ),
              onPressed: onTapBack,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Observer(builder: (context) => Text.rich(
              TextSpan(
                text: '${controller.currentPage + 1}'.padLeft(2, '0'),
                style: AppTheme.textStyles.stepIndicatorPrimary,
                children: [
                  TextSpan(
                    text: ' - ${size.toString().padLeft(2, '0')}',
                    style: AppTheme.textStyles.stepIndicatorSecondary,
                  )
                ]
              )
            ),),
          ),
        ],
      ),
    ),
    preferredSize: Size.fromHeight(60)
  );
}
