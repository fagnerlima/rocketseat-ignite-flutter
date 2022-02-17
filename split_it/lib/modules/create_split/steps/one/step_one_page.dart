import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class StepOnePage extends StatefulWidget {
  const StepOnePage({Key? key}) : super(key: key);

  @override
  _StepOnePageState createState() => _StepOnePageState();
}

class _StepOnePageState extends State<StepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
            text: 'Qual o nome',
            style: AppTheme.textStyles.stepperTitle,
            children: [
              TextSpan(
                text: '\ndo evento?',
                style: AppTheme.textStyles.stepperSubtitle
              )
            ]
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: TextField(
            textAlign: TextAlign.center,
            style: AppTheme.textStyles.textField,
            cursorColor: AppTheme.colors.backgroundSecondary,
            decoration: InputDecoration(
              hintText: 'Ex: Churrasco',
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
        )
      ],
    );
  }
}
