import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServisLearn extends StatefulWidget {
  const ServisLearn({super.key});

  @override
  State<ServisLearn> createState() => _ServisLearnState();
}

class _ServisLearnState extends State<ServisLearn> {
  List<PostModel>? _items;
  @override
  void initState() {
    super.initState();
    fetchpostItems();
  }

  Future<void> fetchpostItems() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map(PostModel.fromJson).toList();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: _items?.length ?? 0,
            itemBuilder: (context, index) => const Text('data')),
      );
}
