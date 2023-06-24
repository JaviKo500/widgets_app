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
  MenuItem(name: AnimatedScreen.name, title: 'Animated', subTitle: 'Container with styles', link: '/animated', icon: Icons.animation_rounded,),
  MenuItem(name: AppTutorialScreen.name, title: 'AppTutorial', subTitle: 'Container with styles', link: '/app_tutorial', icon: Icons.app_shortcut_rounded,),
  MenuItem(name: ProgressScreen.name, title: 'Progress', subTitle: 'Container with styles', link: '/progress', icon: Icons.circle_rounded,),
  MenuItem(name: SnackBarScreen.name, title: 'SnackBar', subTitle: 'Container with styles', link: '/snack_bar', icon: Icons.notifications_active_rounded,),
  MenuItem(name: UiControlsScreen.name, title: 'UiControls', subTitle: 'Container with styles', link: '/ui_controls', icon: Icons.control_camera_rounded,),
];
