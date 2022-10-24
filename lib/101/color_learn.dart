import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Theme.of(context).errorColor,
        child: Text(
          'data',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Theme.of(context).errorColor),
        ),
      ));
}

class ColorsItems {
  final Color porchase = const Color(0xffEDBF61);

  final Color sulu = const Color.fromARGB(198, 237, 97, 1);
}
