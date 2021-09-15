import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get border;
  Color get button;
  Color get title;
  Color get appBarTitle;
}

class AppColorsDefault extends AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get border => Color(0xFFCCCCCC);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get title => Color(0xFF40B28C);

  @override
  Color get appBarTitle => Color(0xFFFFFFFF);
}
