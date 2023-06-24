import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3', style: TextStyle()),
      ),
      body: _HomeView(),
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
        final option = appMenuItems[index];
        return ListTile(
          title: Text(
            option.title,
          ),
          subtitle: Text(
            option.subTitle,
          ),
          leading: Icon(option.icon, color: colors.primary,),
          trailing: Icon(Icons.navigate_next_rounded, color: colors.primary,),
          onTap: () {
             // TODO: navigete other screen
            print(option.title);
          },
        );
      },
    );
  }
}
