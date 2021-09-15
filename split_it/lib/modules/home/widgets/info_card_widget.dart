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
            color: AppTheme.colors.iconBackgroundIncome,
            width: 48,
            height: 48,
          ),
          Column(
            children: [
              Text('A receber'),
              SizedBox(height: 4,),
              Text('R\$ 145,00'),
            ],
          )
        ],
      ),
    );
  }
}
