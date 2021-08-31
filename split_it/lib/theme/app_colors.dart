import 'package:flutter/material.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get button;
  Color get title;
}

class AppColorsDefault extends AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);

  @override
  Color get backgroundSecondary => Color(0xFF40B38C);

  @override
  Color get button => Color(0xFF666666);

  @override
  Color get title => Color(0xFF40B28C);
}
