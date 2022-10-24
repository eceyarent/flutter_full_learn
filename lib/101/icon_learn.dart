import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined),
            color: IconColors().froly,
            iconSize: IconSizes().iconsmall,
          ),
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconsmall = 40;
}

class IconColors {
  final Color froly = const Color(0xFFED617A);
}
