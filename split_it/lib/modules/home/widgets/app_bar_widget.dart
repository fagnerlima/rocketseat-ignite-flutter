import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/login/models/user_model/user.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final User user;
  final VoidCallback onTapAddButton;

  AppBarWidget({
    required this.user,
    required this.onTapAddButton
  }) : super(
    child: Container(
      height: 250,
      color: AppTheme.colors.backgroundSecondary,
      child: Padding(
        padding: const EdgeInsets.only(top: 62,),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(user.photoUrl!)
          ),
          title: Text(
            user.name!,
            style: AppTheme.textStyles.appBar,
          ),
          trailing: AddButtonWidget(onTap: onTapAddButton,),
        ),
      ),
    ),
    preferredSize: Size.fromHeight(250),
  );
}
