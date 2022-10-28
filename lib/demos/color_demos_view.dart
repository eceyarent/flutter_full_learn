// ignore_for_file: public_member_api_docs, sort_constructors_first
// Bir ekran olacak
// Bu ekranda 3 buton ve bunlara basınca renk değişimi olacak
// Seçili olan buton selected icon olsun

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({
    Key? key,
    required this.initialColor,
  }) : super(key: key);
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;
  @override
  void initState() {
    _backgroundColor = widget.initialColor;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: _backgroundColor,
        bottomNavigationBar:
            BottomNavigationBar(onTap: _colorOnTap, items: const [
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.red), label: 'red'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.yellow), label: 'Yellow'),
          BottomNavigationBarItem(
              icon: _ColorContainer(color: Colors.blue), label: 'Blue'),
        ]),
      );
  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, yellow, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) => Container(
        color: color,
        width: 10,
        height: 10,
      );
}
