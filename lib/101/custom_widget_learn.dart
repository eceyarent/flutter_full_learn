import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: horizontal,
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomFoodButton(
                      title: title,
                      onPressed: () {},
                    )),
              ),
            ),
            const SizedBox(height: 100),
            CustomFoodButton(
              title: title,
              onPressed: () {},
            ),
          ],
        ),
      );
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16);
  final EdgeInsets horizontal = const EdgeInsets.symmetric(horizontal: 10);
}

class CustomFoodButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ),
      );
}
