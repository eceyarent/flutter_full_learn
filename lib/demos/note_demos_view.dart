// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = 'Create your first note';
  final _description = 'add a note';
  final _createNote = 'Create a Note';
  final _importNote = 'Import Note';

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
          padding: PaddingItems.horizontalPadding,
          child: Column(
            children: [
              PngImage(name: ImageItems().image),
              _TitleWidget(title: _title),
              _TitleWidget2(
                description: _description * 8,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              _createButton(context),
              TextButton(onPressed: () {}, child: Text(_importNote)),
              const SizedBox(height: ButtonHeights.buttonNormalHeight)
            ],
          ),
        ),
      );

  ElevatedButton _createButton(BuildContext context) => ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          height: ButtonHeights.buttonNormalHeight,
          child: Center(
              child: Text(
            _createNote,
            style: Theme.of(context).textTheme.headline5,
          )),
        ),
      );
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
      );
}

class _TitleWidget2 extends StatelessWidget {
  const _TitleWidget2({
    Key? key,
    required this.textAlign,
    required this.description,
  }) : super(key: key);
  final TextAlign textAlign;
  final String description;
  @override
  Widget build(BuildContext context) => Text(
        description,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w300),
      );
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);

  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeight = 50;
}
