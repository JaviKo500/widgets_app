import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;
  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;
    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });
          final menuItem = appMenuItems[value];
          context.pushNamed(menuItem.name);
          widget.scaffoldKey.currentState?.closeDrawer();
        },
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNotch ? 10 : 20, 16, 10),
            child: const Text('text', style: TextStyle()),
          ),
          ...appMenuItems.sublist(0, 3).map(
                (menu) => NavigationDrawerDestination(
                  icon: Icon(menu.icon),
                  label: Text(menu.title, style: const TextStyle()),
                ),
              ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Text('More options', style: TextStyle()),
          ),
          ...appMenuItems.sublist(3).map(
                (menu) => NavigationDrawerDestination(
                  icon: Icon(menu.icon),
                  label: Text(menu.title, style: const TextStyle()),
                ),
              ),
        ]);
  }
}
