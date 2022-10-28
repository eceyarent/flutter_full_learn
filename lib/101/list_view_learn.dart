import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            FittedBox(
              child: Text(
                'merhaba',
                style: Theme.of(context).textTheme.headline1,
                maxLines: 1,
              ),
            ),
            Container(
              color: Colors.purple,
              height: 300,
            ),
            const Divider(),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.pink, width: 100),
                  Container(color: Colors.yellow, width: 100),
                  Container(color: Colors.blue, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.red, width: 100),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            //xx
            FittedBox(
              child: Text(
                'merhaba',
                style: Theme.of(context).textTheme.headline1,
                maxLines: 1,
              ),
            ),
            Container(
              color: Colors.purple,
              height: 300,
            ),
            const Divider(),
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(color: Colors.pink, width: 100),
                  Container(color: Colors.yellow, width: 100),
                  Container(color: Colors.blue, width: 100),
                  Container(color: Colors.white, width: 100),
                  Container(color: Colors.green, width: 100),
                  Container(color: Colors.red, width: 100),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            const _ListDemo(),
          ],
        ),
      );
}

class _ListDemo extends StatefulWidget {
  const _ListDemo();

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  @override
  void dispose() {
    super.dispose();
    print('exit');
  }

  @override
  Widget build(BuildContext context) => const Placeholder();
}
