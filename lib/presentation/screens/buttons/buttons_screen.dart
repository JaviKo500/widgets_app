import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Buttons screen',
          style: TextStyle()
        ),
      ),
      body: const Placeholder(),
    );
  }
}
