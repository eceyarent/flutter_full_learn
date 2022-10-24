import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.red)),
                    Expanded(child: Container(color: Colors.blue)),
                    Expanded(child: Container(color: Colors.pink)),
                    Expanded(child: Container(color: Colors.grey)),
                  ],
                )),
            Expanded(flex: 2, child: Container(color: Colors.blue)),
            Expanded(flex: 2, child: Container(color: Colors.green)),
            Expanded(flex: 2, child: Container(color: Colors.purple)),
          ],
        ),
      );
}
