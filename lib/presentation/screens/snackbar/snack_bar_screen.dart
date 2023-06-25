import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snack_bar_screen';
  const SnackBarScreen({Key? key}) : super(key: key);

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hello world', style: TextStyle()),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'ok!',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?', style: TextStyle()),
        content: Text(
            'Eiusmod culpa deserunt aute veniam sint qui ipsum culpa dolor aliqua ullamco. In dolor excepteur exercitation voluptate ullamco quis et. Pariatur velit culpa minim ad dolor id id. Irure fugiat qui do velit laboris commodo magna aliquip.',
            style: TextStyle()),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Cancel', style: TextStyle()),
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Accept', style: TextStyle()),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar and Dialogs', style: TextStyle()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () => showAboutDialog(context: context, children: [
                const Text(
                    'Elit cillum quis Lorem occaecat sint. Aute ad est laboris cillum excepteur occaecat deserunt aliquip dolore eiusmod. Commodo eiusmod tempor velit exercitation.',
                    style: TextStyle()),
              ]),
              child: const Text('License using', style: TextStyle()),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Show dialog', style: TextStyle()),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show SnackBar', style: TextStyle()),
        icon: const Icon(Icons.remove_red_eye_rounded),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
