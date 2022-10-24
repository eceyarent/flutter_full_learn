import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  final String _imagePath =
      'https://cdn3.iconfinder.com/data/icons/education-and-knowledge-7/155/vector_338_12-512.png';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              height: 100,
              width: 300,
              child: PngImage(name: ImageItems().image),
            ),
            Image.network(
              _imagePath,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.error),
            ),
          ],
        ),
      );
}

class ImageItems {
  final String image = 'book';
  final String image2 = 'Warning';
}

class PngImage extends StatelessWidget {
  const PngImage({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) =>
      Image.asset(_nameWithPath, fit: BoxFit.cover);

  String get _nameWithPath => 'assets/png/$name.png';
}
