import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/launch_mixin.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearn extends StatefulWidget {
  const PackageLearn({super.key});

  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

final Uri _url = Uri.parse('https://flutter.dev');

class _PackageLearnState extends State<PackageLearn> with LaunchMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            launchUrl(_url);
          },
        ),
        body: const LoadingBar(),
      );

  @override
  void name(args) {}
}
