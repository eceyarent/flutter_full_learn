import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        appBarTheme: AppBarTheme(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)))),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.purple),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
              onPrimary: Colors.pink, onSecondary: _lightColor.blueMenia),
        ),
        colorScheme: ColorScheme.light(),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(Colors.red),
          side: BorderSide(color: Colors.green),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
            subtitle1: TextStyle(fontSize: 25, color: _lightColor._textColor)));
  }
}

class _LightColor {
  final Color _textColor = const Color.fromARGB(255, 37, 5, 5);
  final Color blueMenia = const Color.fromARGB(95, 188, 248, 1);
}
