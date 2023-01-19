import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/icon_dollar_widget.dart';
import 'package:split_it/modules/home/widgets/loading_widget.dart';
import 'package:split_it/shared/models/event_model.dart';
import 'package:split_it/shared/util/date_utils.dart' as dt;
import 'package:split_it/shared/util/number_utils.dart';
import 'package:split_it/theme/app_theme.dart';

class EventTileWidget extends StatelessWidget {
  final EventModel data;
  final bool isLoading;

  const EventTileWidget({
    Key? key,
    required this.data,
    this.isLoading = false
  }) : super(key: key);

  IconDollarType get iconDollarType => data.value! >= 0
      ? IconDollarType.income
      : IconDollarType.expense;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Row(
        children: [
          LoadingWidget(size: Size(48, 48)),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: LoadingWidget(size: Size(81, 19)),
                      subtitle: LoadingWidget(size: Size(52, 18)),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LoadingWidget(size: Size(61, 17)),
                          SizedBox(height: 5,),
                          LoadingWidget(size: Size(44, 18)),
                        ],
                      ),
                    ),
                    Divider(
                      color: AppTheme.colors.divider,
                    ),
                  ],
                ),
              )
          )
        ],
      );
    }

    return Row(
      children: [
        IconDollarWidget(type: iconDollarType),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    data.name!,
                    style: AppTheme.textStyles.eventTileTitle,
                  ),
                  subtitle: Text(
                    dt.DateUtils.formatDate(data.created!),
                    style: AppTheme.textStyles.eventTileSubtitle
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        NumberUtils.formatCurrency(data.value!),
                        style: AppTheme.textStyles.eventTileValue
                      ),
                      SizedBox(height: 5,),
                      Text(
                        '${data.people} amigo${data.people! > 1 ? 's' : ''}',
                          style: AppTheme.textStyles.eventTilePeople
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppTheme.colors.divider,
                ),
              ],
            ),
          )
        )
      ],
    );
  }
}
