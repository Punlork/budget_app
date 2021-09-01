import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constaints.dart';
import 'providers/items_provider.dart';
import 'screens/intropage/intro_page.dart';
import 'screens/homepage/homepage.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Items(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kWhiteTextColor,
          appBarTheme: AppBarTheme(
            color: kBackgroundColor,
          ),
        ),
        home: IntroPage(),
        routes: {
          Homepage.routeName: (ctx) => Homepage(),
        },
      ),
    );
  }
}
