import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

enum IconDollarType {
  income,
  expense
}

class IconDollarWidget extends StatelessWidget {
  final IconDollarType type;

  const IconDollarWidget({
    Key? key,
    required this.type
  }) : super(key: key);

  Color get backgroundColor {
    switch(this.type) {
      case IconDollarType.income:
        return AppTheme.colors.iconBackgroundIncome;
      case IconDollarType.expense:
        return AppTheme.colors.iconBackgroundExpense;
    }
  }

  String get imagePath {
    String type;

    switch (this.type) {
      case IconDollarType.income:
        type = 'income';
        break;
      case IconDollarType.expense:
        type = 'expense';
    }

    return 'assets/images/dollar-$type.png';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: 48,
      height: 48,
      child: Center(
        child: Image.asset(
          imagePath,
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
