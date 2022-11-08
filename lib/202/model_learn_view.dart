import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel8 user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();

    final user1 = PostModel1();
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'a';

    // final user3 = PostModel3(1, 2, 'a', 'b');
    //user3.body = 'a'; //Localde yapıyorsak daha iyi kullanımlar 1 2 3 4

    // final user4 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');
    // user4.body = 'a';

    final user5 = PostModel5(userId: 1, id: 2, title: 'a', body: 'b');
    user5.userId;

    //final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'b');

    // final user7 = PostModel7();

    // final user8 = PostModel8(); //servisten data çekerken en iyi kullanım
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'ece');
            user9.updateBody('yaren');
          });
        }),
        appBar: AppBar(
          title: Text(user9.body ?? 'not has any data'),
        ),
      );
}
