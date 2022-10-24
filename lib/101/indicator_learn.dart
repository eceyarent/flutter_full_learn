import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: const [CentercircularProgress()],
        ),
        body: const Center(
          child: LinearProgressIndicator(),
        ),
      );
}

class CentercircularProgress extends StatelessWidget {
  const CentercircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      const Center(child: CircularProgressIndicator());
}
