import 'package:flutter/material.dart';

class WidgetSizeLearnView extends StatefulWidget {
  const WidgetSizeLearnView({super.key});

  @override
  State<WidgetSizeLearnView> createState() => _WidgetSizeLearnViewState();
}

class _WidgetSizeLearnViewState extends State<WidgetSizeLearnView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Card(
            child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.pink,
        )),
      );
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtensions on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}
