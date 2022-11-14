import 'package:flutter/material.dart';
import 'package:flutter_full_learn/demos/password_textfield_view.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({super.key});

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            PasswordTextField(),
            CheckboxListTile(
              value: true,
              onChanged: (val) {},
              title: Text('Select'),
            )
          ],
        ),
      );
}
