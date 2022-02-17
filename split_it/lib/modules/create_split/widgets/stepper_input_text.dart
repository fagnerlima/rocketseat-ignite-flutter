import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepperInputTextWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String hintText;

  const StepperInputTextWidget({
    Key? key,
    required this.onChanged,
    this.hintText = ''
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: TextField(
        onChanged: onChanged,
        textAlign: TextAlign.center,
        style: AppTheme.textStyles.textField,
        cursorColor: AppTheme.colors.backgroundSecondary,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTheme.textStyles.hintTextField,
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: AppTheme.colors.inputBorder)
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppTheme.colors.inputBorder)
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppTheme.colors.inputBorder)
          ),
        ),
      ),
    );
  }
}
