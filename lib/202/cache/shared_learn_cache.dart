import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  @override
  void initState() {
    super.initState();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    final prefs = await SharedPreferences.getInstance();
    final counter = prefs.getInt('counter');
    _onChangeValue(counter.toString());
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(_currentValue.toString()),
          actions: [
            if (isLoading)
              Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              )
            else
              SizedBox.shrink()
          ],
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _saveValueButton(),
            _removeValueButton(),
          ],
        ),
        body: TextField(
          onChanged: (value) {
            _onChangeValue(value);
          },
        ),
      );

  FloatingActionButton _saveValueButton() => FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () async {
          _changeLoading();
          final prefs = await SharedPreferences.getInstance();
          await prefs.setInt('counter', _currentValue);
        },
      );

  FloatingActionButton _removeValueButton() => FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () async {
          _changeLoading();
          final prefs = await SharedPreferences.getInstance();
          await prefs.remove(
            'counter',
          );
        },
      );
}

//Generic
abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}