import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snack_bar_screen';
  const SnackBarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SnackBar Screen',
          style: TextStyle()
        ),
      ),
      body: const Placeholder()
    );
  }
}
