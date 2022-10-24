import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class ListTilelearn extends StatelessWidget {
  const ListTilelearn({Key? key}) : super(key: key);

  final imageUrl = 'https://picsum.photos/200/300';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Card(
              child: ListTile(
                title: const RandomImage(),
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
            Card(
              child: ListTile(
                title: Image.network(
                  imageUrl,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      );
}
