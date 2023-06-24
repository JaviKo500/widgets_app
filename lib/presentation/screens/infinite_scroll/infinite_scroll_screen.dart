import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {
  static const name = 'infinite_scroll_screen';
  const InfiniteScrollScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Infinite Scroll Screen',
          style: TextStyle()
        ),
      ),
      body: const Placeholder()
    );
  }
}
