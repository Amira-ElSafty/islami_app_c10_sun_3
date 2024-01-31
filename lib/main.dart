import 'package:flutter/material.dart';
import 'package:flutter_app_islami_c10_sun3/home/hadeth/hadeth_details_screen.dart';
import 'package:flutter_app_islami_c10_sun3/home/home_screen.dart';
import 'package:flutter_app_islami_c10_sun3/home/quran/sura_details_screen.dart';
import 'package:flutter_app_islami_c10_sun3/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyTheme.lightMode,
    );
  }
}
