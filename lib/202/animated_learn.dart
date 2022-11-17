import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({super.key});

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn> {
  bool _isVisible = false;
  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: _animatedWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisible();
          },
        ),
      );

  AnimatedCrossFade _animatedWidget() => AnimatedCrossFade(
      firstChild: Placeholder(),
      secondChild: SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond);
}

extension BuildContextExtensions on BuildContext {
  TextTheme textTheme() => Theme.of(this).textTheme;
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
