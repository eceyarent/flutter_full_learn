import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/cache/shared_manager.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;
  @override
  void initState() {
    super.initState();
    _manager = SharedManager();
    _initialze();

    getDefaultValues();
  }

  Future<void> _initialze() async {
    _changeLoading();
    await _manager.init();
    _changeLoading();

    await getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    // final prefs = await SharedPreferences.getInstance();
    // final counter = prefs.getInt('counter');
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
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
          await _manager.saveString(
              SharedKeys.counter, _currentValue.toString());
          _changeLoading();
        },
      );

  FloatingActionButton _removeValueButton() => FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: () async {
          _changeLoading();
          await _manager.removeItem(SharedKeys.counter);
          _changeLoading();
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
