import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({super.key});

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}

class _AnimatedLearnState extends State<AnimatedLearn>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController _controller;
  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
      _controller.animateTo(_isVisible ? 1 : 0);
    });
  }

  void changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
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
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                opacity: _isOpacity ? 1 : 0,
                duration: _DurationItems.durationLow,
                child: Text('Data')),
            trailing: IconButton(
              onPressed: () {
                changeOpacity();
              },
              icon: Icon(Icons.precision_manufacturing_rounded),
            ),
          ),
          AnimatedDefaultTextStyle(
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  TextStyle(),
              duration: _DurationItems.durationLow,
              child: Text('Data')),
          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: _controller),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height: _isVisible ? 0 : MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
            margin: EdgeInsets.all(10),
          ),
          Expanded(
              child: Stack(
            children: const [
              AnimatedPositioned(
                  top: 10,
                  curve: Curves.elasticInOut,
                  duration: _DurationItems.durationLow,
                  child: Text('data'))
            ],
          )),
          Expanded(
              child: AnimatedList(
            itemBuilder: (context, index, animation) => Text('data'),
          ))
        ],
      ));

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
