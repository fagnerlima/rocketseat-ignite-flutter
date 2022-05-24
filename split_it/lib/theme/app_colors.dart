import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get border;
  Color get borderWhite;
  Color get button;
  Color get icon;
  Color get iconBackgroundIncome;
  Color get iconBackgroundExpense;
  Color get title;
  Color get appBarTitle;
  Color get infoCardTitle;
  Color get infoCardDetailIncome;
  Color get infoCardDetailExpense;
  Color get eventTileTitle;
  Color get eventTileSubtitle;
  Color get eventTileValue;
  Color get eventTilePeople;
  Color get divider;
  Color get stepIndicatorPrimary;
  Color get stepIndicatorSecondary;
  Color get backButton;
  Color get stepNextButton;
  Color get stepNextButtonRegular;
  Color get stepNextButtonDisabled;
  Color get stepTitle;
  Color get stepSubtitle;
  Color get hintTextField;
  Color get textField;
  Color get inputBorder;
  Color get iconAdd;
  Color get iconRemove;
  Color get personTileTitle;
  Color get personTileTitleSelected;
}

class AppColorsDefault extends AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get border => Color(0xFFCCCCCC);

  @override
  Color get borderWhite => Color(0xFFFFFFFF);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get icon => Color(0xFFF5F5F5);

  @override
  Color get iconBackgroundIncome => Color(0xFFE9F8F2);

  @override
  Color get iconBackgroundExpense => Color(0xFFFDECEF);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get appBarTitle => Color(0xFFFFFFFF);

  @override
  Color get infoCardTitle => Color(0xFF666666);

  @override
  Color get infoCardDetailIncome => Color(0xFF40B28C);

  @override
  Color get infoCardDetailExpense => Color(0xFFE83F5B);

  @override
  Color get eventTileTitle => Color(0xFF455250);

  @override
  Color get eventTileSubtitle => Color(0xFF666666);

  @override
  Color get eventTileValue => Color(0xFF666666);

  @override
  Color get eventTilePeople => Color(0xFFA4B2AE);

  @override
  Color get divider => Color(0xFF666666);

  @override
  Color get stepIndicatorPrimary => Color(0xFF3CAB82);

  @override
  Color get stepIndicatorSecondary => Color(0xFF666666);

  @override
  Color get backButton => Color(0xFF666666);

  @override
  Color get stepNextButton => Color(0xFF455250);

  @override
  Color get stepNextButtonRegular => Color(0xFF40B28C);

  @override
  Color get stepNextButtonDisabled => Color(0xFF666666);

  @override
  Color get stepTitle => Color(0xFF454250);

  @override
  Color get stepSubtitle => Color(0xFF454250);

  @override
  Color get hintTextField => Color(0xFF666666);

  @override
  Color get textField => Color(0xFF455250);

  @override
  Color get inputBorder => Color(0xFF455250);

  @override
  Color get iconAdd => Color(0xFF40B28C);

  @override
  Color get iconRemove => Color(0xFFE83F5B);

  @override
  Color get personTileTitle => button;

  @override
  Color get personTileTitleSelected => Color(0xFF455250);
}
