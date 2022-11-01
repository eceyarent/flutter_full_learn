// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({
    Key? key,
    required this.isOkey,
  }) : super(key: key);
  final bool isOkey;

  @override
  State<NavigateDetailLearn> createState() => _NavigateLearnState();
}

class _NavigateLearnState extends State<NavigateDetailLearn> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //ModalRoute.of(context).settings.arguments;
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
            label: widget.isOkey ? const Text('Red') : const Text('Onayla'),
          ),
        ),
      );
}
