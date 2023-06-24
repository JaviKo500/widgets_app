import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final String name;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.name,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(name: ButtonsScreen.name, title: 'Buttons', subTitle: 'Many buttons in flutter', link: '/buttons', icon: Icons.smart_button_outlined,),
  MenuItem(name: CardsScreen.name, title: 'Card', subTitle: 'Container with styles', link: '/cards', icon: Icons.credit_card_outlined,),
];
