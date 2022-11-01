import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({Key? key, this.isOkey = false}) : super(key: key);
  final bool isOkey;
  @override
  State<NavigateDetailLearn> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateDetailLearn> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //  ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop(!widget.isOkey);
              },
              icon: Icon(Icons.check,
                  color: widget.isOkey ? Colors.red : Colors.green),
              label: widget.isOkey ? const Text('Red') : const Text('Onayla')),
        ),
      );
}
