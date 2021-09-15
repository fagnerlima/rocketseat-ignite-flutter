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
}
