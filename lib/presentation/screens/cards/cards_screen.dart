import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
   static const name = 'cards_screen';
  const CardsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card Screen',
          style: TextStyle()
        ),
      ),
      body: const Placeholder(  )
    );
  }
}