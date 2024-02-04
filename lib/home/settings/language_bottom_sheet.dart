import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c10_sun3/my_theme.dart';
import 'package:flutter_app_islami_c10_sun3/providers/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
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
              /// change language to en
              provider.changeLanguage('en');
            },
            child: provider.appLanguage == 'en'
                ? getSelectedItemWidget(AppLocalizations.of(context)!.english)
                : getUnSelectedItemWidget(
                    AppLocalizations.of(context)!.english),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                /// change language to ar
                provider.changeLanguage('ar');
              },
              child: provider.appLanguage == 'ar'
                  ? getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
                  : getUnSelectedItemWidget(
                      AppLocalizations.of(context)!.arabic)),
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
                fontWeight: FontWeight.bold,
              ),
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
