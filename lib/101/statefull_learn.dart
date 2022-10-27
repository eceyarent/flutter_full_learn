import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/Language/language_items.dart';
import 'package:flutter_full_learn/product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;

  void _updateCounter(bool add) {
    if (add) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _addButton(),
            _removeButton(),
          ],
        ),
        body: Column(
          children: [
            Center(
                child: Text(_countValue.toString(),
                    style: Theme.of(context).textTheme.headline2)),
            const Placeholder(),
            const CounterHelloButton()
          ],
        ),
      );

  Padding _removeButton() => Padding(
        padding: const EdgeInsets.only(left: 10),
        child: FloatingActionButton(
          onPressed: () {
            _updateCounter(false);
          },
          child: const Icon(Icons.remove),
        ),
      );

  FloatingActionButton _addButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }
}
