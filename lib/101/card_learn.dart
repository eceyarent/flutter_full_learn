import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Card(
              margin: ProjectMargin.cardMargin,
              child: SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('data')),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            _CustomCard(
              child: SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('data')),
              ),
            ),
            _CustomCard(
              child: SizedBox(
                height: 100,
                width: 300,
                child: Center(child: Text('data')),
              ),
            )
          ],
        ),
      );
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(20);
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
  @override
  Widget build(BuildContext context) => Card(
        margin: ProjectMargin.cardMargin,
        child: child,
        shape: roundedRectangleBorder,
      );
}
