import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/state_manage/state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

class _StateManageLearnViewState extends StateLearnViewModel {
  bool _isVisible = false;
  bool _isOpacity = false;

  @override
  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  void changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisible();
          },
        ),
        appBar: AppBar(
          backgroundColor: isOpacity ? Colors.red : Colors.green,
          shadowColor: isVisible ? Colors.amber : Colors.pink,
        ),
      );
}
