import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text('save', style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.green;
              }
            })),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('data'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc_rounded),
          ),
          FloatingActionButton(
            onPressed: () {
              //servise istek at
              // sayfanın rengini düzenle
            },
            child: const Icon(Icons.add),
          ),
          SizedBox(
            width: 50,
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.all(10),
                  shape: const CircleBorder()),
              onPressed: () {},
              child: const Text('data'),
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.abc),
            label: const Text('data'),
          ),
          InkWell(
            onTap: () {},
            child: const Text('custom'),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 10, left: 10),
                child: Text(
                  'Place Bid',
                  style: Theme.of(context).textTheme.headline5,
                ),
              )),
        ],
      ),
    );
  }
}

//Borders : CircleBorder() ,RoundedRectangleBorder()