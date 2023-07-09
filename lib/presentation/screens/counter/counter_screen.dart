import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';

  const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counterClick = ref.watch(counterProvider);
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Riverpod', style: TextStyle()),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
            },
            icon: Icon( isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            // icon: isDarkMode
            //     ? const Icon(Icons.dark_mode_outlined)
            //     : const Icon(Icons.light_mode_outlined)
          )
        ],
      ),
      body: Center(
        child: Text('Value: $counterClick',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
