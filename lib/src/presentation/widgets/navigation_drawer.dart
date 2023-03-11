import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppNavigationDrawer extends HookWidget {
  const AppNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        TextButton(
            onPressed: () {
              print('on agents');
            },
            child: Text('Agents')),
        TextButton(
            onPressed: () {
              print('on guns');
            },
            child: Text('Guns')),
      ],
    );
  }
}
