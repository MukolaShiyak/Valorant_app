import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainAppBar extends HookWidget implements PreferredSizeWidget {
  MainAppBar({
    super.key,
    this.height = kToolbarHeight,
    required this.title,
  }) : preferredSize = Size.fromHeight(height);

  @override
  final Size preferredSize;

  final double height;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
    );
  }
}
