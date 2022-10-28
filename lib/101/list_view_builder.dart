import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
            color: Colors.white,
          ),
          itemCount: 15,
          itemBuilder: (context, index) {
            print(index);
            return SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(
                      child: Image.network('https://picsum.photos/200/300')),
                  Text('$index')
                ],
              ),
            );
          },
        ),
      );
}
