import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepInputTextWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String hintText;
  final TextAlign textAlign;
  final EdgeInsets padding;
  final TextEditingController? controller;
  final TextInputType textInputType;

  const StepInputTextWidget({
    Key? key,
    required this.onChanged,
    this.hintText = '',
    this.textAlign = TextAlign.center,
    this.padding = const EdgeInsets.symmetric(horizontal: 64),
    this.controller,
    this.textInputType = TextInputType.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        controller: controller,
        keyboardType: textInputType,
        onChanged: onChanged,
        textAlign: textAlign,
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
