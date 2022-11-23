import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {},
        child: Column(
          children: [
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            TextFormField(validator: FormFieldValidator().isNotEmpty),
            DropdownButtonFormField(items: const [
              DropdownMenuItem(value: 'v', child: Text('a')),
              DropdownMenuItem(value: 'v1', child: Text('a')),
              DropdownMenuItem(value: 'v2', child: Text('a')),
            ], onChanged: (value) {}),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('Save'))
          ],
        ),
      ));
}

class FormFieldValidator {
  String? isNotEmpty(String? data) =>
      (data?.isNotEmpty ?? false) ? null : ValidatorMessage._notEmpty;
}

class ValidatorMessage {
  static const String _notEmpty = 'Bos gecilemez';
}
