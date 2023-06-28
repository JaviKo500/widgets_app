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
  MenuItem(name: ProgressScreen.name, title: 'Progress indicator', subTitle: 'Generic and controls', link: '/progress', icon: Icons.refresh_rounded,),
  MenuItem(name: SnackBarScreen.name, title: 'SnackBars Dialogs', subTitle: 'SnackBars and dialogs', link: '/snack_bar', icon: Icons.notifications_active_rounded,),
  MenuItem(name: AnimatedScreen.name, title: 'Animated Container', subTitle: 'Stateful Widget animated ', link: '/animated', icon: Icons.check_box_outline_blank_rounded,),
  MenuItem(name: UiControlsScreen.name, title: 'Ui Controls + tiles', subTitle: 'Series control flutter', link: '/ui_controls', icon: Icons.car_rental_rounded,),
  MenuItem(name: AppTutorialScreen.name, title: 'Introduction app', subTitle: 'Tutorial app', link: '/app_tutorial', icon: Icons.app_shortcut_rounded,),
];
