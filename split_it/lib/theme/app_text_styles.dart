import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get button;
  TextStyle get title;
  TextStyle get appBar;
  TextStyle get infoCardTitle;
  TextStyle get infoCardDetailIncome;
  TextStyle get infoCardDetailExpense;
}

class AppTextStylesDefault extends AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
    color: AppTheme.colors.button,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get title => GoogleFonts.montserrat(
    color: AppTheme.colors.title,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
    color: AppTheme.colors.appBarTitle,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
    color: AppTheme.colors.infoCardTitle,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get infoCardDetailIncome => GoogleFonts.inter(
    color: AppTheme.colors.infoCardDetailIncome,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  @override
  TextStyle get infoCardDetailExpense => GoogleFonts.inter(
    color: AppTheme.colors.infoCardDetailExpense,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}