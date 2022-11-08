import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({Key? key}) : super(key: key);
  final String _title = 'Welcome Learn';
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(_title),
          leading: const Icon(Icons.chevron_left),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mark_as_unread_sharp,
              ),
            ),
            const Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
        body: Column(
          children: const [],
        ),
      );
}
