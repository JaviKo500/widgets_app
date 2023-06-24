import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons_screen';
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons screen', style: TextStyle()),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated button', style: TextStyle()),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated disabled button', style: TextStyle()),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated icon button', style: TextStyle()),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled', style: TextStyle()),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.ac_unit_rounded),
              label: const Text('Fill icon', style: TextStyle()),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline', style: TextStyle()),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal_rounded),
              label: const Text('Outline icon', style: TextStyle()),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button', style: TextStyle()),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.book_online_rounded),
              label: const Text('Text icon button', style: TextStyle()),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(colors.primary),
                  iconColor: const MaterialStatePropertyAll(Colors.white)),
            ),
            const CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Custom button',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}
