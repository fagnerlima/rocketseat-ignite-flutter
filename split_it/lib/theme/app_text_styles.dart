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
  TextStyle get eventTileTitle;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTileValue;
  TextStyle get eventTilePeople;
  TextStyle get stepIndicatorPrimary;
  TextStyle get stepIndicatorSecondary;
  TextStyle get stepNextButton;
  TextStyle get stepNextButtonDisabled;
  TextStyle get stepTitle;
  TextStyle get stepSubtitle;
  TextStyle get hintTextField;
  TextStyle get textField;
  TextStyle get personTileTitle;
  TextStyle get personTileTitleSelected;
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

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
    color: AppTheme.colors.eventTileTitle,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
    color: AppTheme.colors.eventTileSubtitle,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get eventTileValue => GoogleFonts.inter(
    color: AppTheme.colors.eventTileValue,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
    color: AppTheme.colors.eventTilePeople,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get stepIndicatorPrimary => GoogleFonts.roboto(
    color: AppTheme.colors.stepIndicatorPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  @override
  TextStyle get stepIndicatorSecondary => GoogleFonts.roboto(
    color: AppTheme.colors.stepIndicatorSecondary,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get stepNextButton => GoogleFonts.inter(
    color: AppTheme.colors.stepNextButton,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get stepNextButtonDisabled => GoogleFonts.inter(
    color: AppTheme.colors.stepNextButtonDisabled,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get stepTitle => GoogleFonts.inter(
    color: AppTheme.colors.stepTitle,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  @override
  TextStyle get stepSubtitle => GoogleFonts.inter(
    color: AppTheme.colors.stepSubtitle,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
    color: AppTheme.colors.hintTextField,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get textField => GoogleFonts.inter(
    color: AppTheme.colors.textField,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  @override
  TextStyle get personTileTitle => GoogleFonts.inter(
    color: AppTheme.colors.personTileTitle,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  @override
  TextStyle get personTileTitleSelected => GoogleFonts.inter(
    color: AppTheme.colors.personTileTitleSelected,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
}