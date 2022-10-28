import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: ListView.builder(
            itemCount: _items.length,
            padding: PaddindUtility().paddingHorizontal,
            itemBuilder: (context, index) =>
                _CategoryCard(model: _items[index])),
      );
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) => Card(
        margin: PaddindUtility().paddingBottom,
        child: SizedBox(
          height: 300,
          child: Padding(
            padding: PaddindUtility().paddingGeneral,
            child: Column(
              children: [
                Expanded(
                    child: Image.asset(
                  _model.imagePath,
                  fit: BoxFit.fill,
                )),
                Padding(
                  padding: PaddindUtility().paddingTop,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(_model.title),
                      Text('${_model.price} eth'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class CollectionModel {
  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
  final String imagePath;
  final String title;
  final double price;
}

class PaddindUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: 'Abstract Art',
          price: 3.4)
    ];
  }
  late final List<CollectionModel> items;
}

class ProjectImages {
  static const imageCollection = 'assets/png/image_collection.png';
}
