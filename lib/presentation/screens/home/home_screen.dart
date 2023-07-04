import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3', style: TextStyle()),
      ),
      body: const _HomeView(),
      drawer: const SideMenu()
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return ListTile(
          title: Text(
            menuItem.title,
          ),
          subtitle: Text(
            menuItem.subTitle,
          ),
          leading: Icon(
            menuItem.icon,
            color: colors.primary,
          ),
          trailing: Icon(
            Icons.navigate_next_rounded,
            color: colors.primary,
          ),
          onTap: () {
            // Navigator.pushNamed(context, menuItem.link);
            context.pushNamed( menuItem.name );
          },
        );
      },
    );
  }
}
