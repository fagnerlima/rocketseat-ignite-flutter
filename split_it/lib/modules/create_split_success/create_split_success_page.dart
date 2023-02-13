import 'package:flutter/material.dart';
import 'package:split_it/modules/create_split/create_split_controller.dart';
import 'package:split_it/shared/util/number_utils.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitSuccessPage extends StatelessWidget {
  final CreateSplitController controller;

  const  CreateSplitSuccessPage({
    Key? key,
    required this.controller
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundSecondary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/money.png',
                width: 240,
                height: 240,
              )
            ],
          ),
          SizedBox(height: 48,),
          Text(
            '${controller.event.friends.length} pessoas',
            style: AppTheme.textStyles.button.copyWith(
                color: AppTheme.colors.backgroundPrimary
            ),
          ),
          SizedBox(height: 8,),
          Text(
            '${NumberUtils.formatCurrency(controller.event.splitedValue)}',
            style: AppTheme.textStyles.title.copyWith(
                color: AppTheme.colors.backgroundPrimary
            ),
          ),
          SizedBox(height: 8,),
          Text(
            'para cada um',
            style: AppTheme.textStyles.button.copyWith(
                color: AppTheme.colors.backgroundPrimary
            ),
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: controller.event.friends.map((e) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(e.photoURL),
                        fit: BoxFit.cover
                    )
                ),
              ),
            )).toList(),
          )
        ],
      ),
    );
  }
}
