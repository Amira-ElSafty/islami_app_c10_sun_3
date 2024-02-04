import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c10_sun3/my_theme.dart';
import 'package:flutter_app_islami_c10_sun3/providers/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  late AppConfigProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              /// change theme to dark
              provider.changeTheme(ThemeMode.dark);
            },

            /// dark
            child: provider.isDarkMode()
                ? getSelectedItemWidget(AppLocalizations.of(context)!.dark)
                : getUnSelectedItemWidget(AppLocalizations.of(context)!.dark),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                /// change theme to light
                provider.changeTheme(ThemeMode.light);
              },
              child: provider.isDarkMode()
                  ? getUnSelectedItemWidget(AppLocalizations.of(context)!.light)
                  : getSelectedItemWidget(AppLocalizations.of(context)!.light)),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.check,
          size: 35,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }

  Widget getUnSelectedItemWidget(String text) {
    return Text(
      text,
      style: provider.isDarkMode()
          ? Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: MyTheme.blackColor)
          : Theme.of(context).textTheme.titleSmall,
    );
  }
}
