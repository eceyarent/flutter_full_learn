import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_learn_cache.dart';

import 'package:flutter_full_learn/202/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: LightTheme().theme,
        //ThemeData.dark().copyWith(
        // tabBarTheme: const TabBarTheme(
        //   labelColor: Colors.white,
        //   unselectedLabelColor: Colors.red,
        //   indicatorSize: TabBarIndicatorSize.label,

        // ),
        //bottomAppBarTheme: const BottomAppBarTheme
        //(shape: CircularNotchedRectangle()),
        // progressIndicatorTheme:
        //     const ProgressIndicatorThemeData(color: Colors.white),
        // errorColor: ColorsItems().sulu,
        // inputDecorationTheme: const InputDecorationTheme(
        //     filled: true,
        //     fillColor: Colors.white,
        //     iconColor: Colors.red,
        //     labelStyle: TextStyle(color: Colors.lime),
        //     border: OutlineInputBorder(),
        //     floatingLabelStyle: TextStyle(
        //         color: Colors.red,
        //         fontSize: 24,
        //         fontWeight: FontWeight.w600)),
        // textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
        // appBarTheme: const AppBarTheme(
        //   centerTitle: true,
        //   systemOverlayStyle: SystemUiOverlayStyle.light,
        //   backgroundColor: Colors.transparent,
        //   elevation: 0, )
        home: const SharedLearn(),
      );
}
