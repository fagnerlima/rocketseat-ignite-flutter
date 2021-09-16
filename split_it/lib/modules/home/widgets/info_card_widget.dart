import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 156,
      height: 168,
      decoration: BoxDecoration(
        color: AppTheme.colors.backgroundPrimary,
        border: Border.fromBorderSide(BorderSide(
          color: AppTheme.colors.border
        )),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppTheme.colors.iconBackgroundIncome,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 48,
            height: 48,
            child: Center(
              child: Image.asset(
                'assets/images/dollar-income.png',
                width: 32,
                height: 32,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'A receber',
                style: AppTheme.textStyles.infoCardTitle,
              ),
              SizedBox(height: 4,),
              Text(
                'R\$ 145,00',
                style: AppTheme.textStyles.infoCardDetailIncome,
              ),
            ],
          )
        ],
      ),
    );
  }
}
