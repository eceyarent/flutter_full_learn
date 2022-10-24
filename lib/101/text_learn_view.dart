import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);

  final String name = 'ece';
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Welcome $name ${name.length}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                  style: ProjectStyles.welcomeStyle),
            ),
            Text('Hello $name ${name.length}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: ProjectColors.welcomeColor)),
          ],
        ),
      );
}

class ProjectStyles {
  static const TextStyle welcomeStyle = TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.lime,
      wordSpacing: 3,
      letterSpacing: 3,
      fontSize: 16,
      fontWeight: FontWeight.bold);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}
