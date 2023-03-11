import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPageLayout extends HookWidget {
  const MainPageLayout({
    super.key,
    this.appBar,
    required this.body,
    this.drawer,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
      drawer: drawer,
    );
  }
}
