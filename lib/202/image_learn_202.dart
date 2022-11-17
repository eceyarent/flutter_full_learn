import 'package:flutter/material.dart';

class ImageLearn extends StatefulWidget {
  const ImageLearn({super.key});

  @override
  State<ImageLearn> createState() => _ImageLearnState();
}

class _ImageLearnState extends State<ImageLearn> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ImagePaths.book.toWidget(height: 100),
      );
}

enum ImagePaths {
  book,
}

extension ImagePathsExtensions on ImagePaths {
  String path() => 'assets/png/$name.png';

  Widget toWidget({double height = 24}) => Image.asset(
        path(),
        height: height,
      );
}
